@RestResource(urlMapping='/TopFiveArticles/*')
global class TopFiveArticleController {
	
	global class ArticleInfo {
		string url;
		string title;
		integer rank;
	}

    @HttpGet
    global static List<ArticleInfo> getTopFiveArticles() {
       	//string urlPrefix = 'http://utocomm-uto.cs10.force.com/pkb/articles/FAQ/';
       	string urlPrefix = 'http://asu.secure.force.com/kb/articles/FAQ/';
       	//string urlPrefix = getPkbSiteUrl();
        List<KnowledgeArticleViewStat> articleViewStatList = [SELECT Id, ParentId FROM KnowledgeArticleViewStat ORDER BY ViewCount DESC LIMIT 5];
        Set<Id> articleIds = new Set<Id>();
        system.debug('GRF1: ' + articleIds);
        List<ArticleInfo> articles = new List<ArticleInfo>();
        integer articleRank = 0;
        if (articleViewStatList.size() > 0) {
        	for (KnowledgeArticleViewStat kavs: [SELECT Id, ParentId FROM KnowledgeArticleViewStat WHERE Channel = 'AllChannels' ORDER BY ViewCount DESC LIMIT 5]) {
        		articleIds.add(kavs.ParentId);
        	}
        	for (KnowledgeArticleVersion kav: [SELECT id,Title, UrlName, KnowledgeArticleId, PublishStatus, language 
											   FROM KnowledgeArticleVersion 
											   WHERE PublishStatus='Online'
											   AND language ='en_US' 
											   AND KnowledgeArticleId IN :articleIds]) {
				articleRank++;							   	
        		ArticleInfo ai = new ArticleInfo();
        		ai.rank = articleRank;
        		ai.title = kav.Title;
        		ai.url = urlPrefix + kav.UrlName;
        		articles.add(ai);
			}
        }
        system.debug('GRF2: ' + articles);
        return articles;
    }
    
    @HttpPost
    global static List<ArticleInfo> getTopFiveArticles2(String listName) {
       	//string urlPrefix = getPkbSiteUrl();
        List<ArticleInfo> articles = new List<ArticleInfo>();
        integer articleRank = 0;
    	Set<Id> kavIds = new Set<Id>();
    	Set<Id> articleIds = new Set<Id>();
    	/*
    	List<KnowledgeArticleVersion> kavList = new List<KnowledgeArticleVersion>([SELECT Id, KnowledgeArticleId FROM KnowledgeArticleVersion WHERE PublishStatus='Online'
										   																		    AND language ='en_US'
										   																		    AND isVisibleInPkb = true
										   																		    WITH DATA CATEGORY Finances__c ABOVE_OR_BELOW All__c]);
		*/
		string kavQuery = 'SELECT Id, KnowledgeArticleId FROM KnowledgeArticleVersion WHERE PublishStatus=\'Online\' AND language =\'en_US\' AND isVisibleInPkb = true';
		string dataCategory = '';
		string dcGroup;
		if (listName == 'Classes') {
			dcGroup = 'Academics__c';
			dataCategory = 'My_ASU_Classes__c';
		}
		else if (listName == 'Programs and eAdvisor') {
			dcGroup = 'Academics__c';
			dataCategory = 'My_ASU_Programs_and__c';
		}
		else if (listName == 'Application Status') {
			dcGroup = 'Academics__c';
			dataCategory= 'My_ASU_Application__c';
		}
		else if (listName == 'Devil2Devil') {
			dcGroup = 'Campus_Services__c';
			dataCategory = 'My_ASU_Devil2Devil__c';
		}
		else if (listName == 'Account Charges') {
			dcGroup = 'Finances__c';
			dataCategory = 'My_ASU_Account_Charges__c';
		}
		else if (listName == 'Financial Aid and Scholarships') {
			dcGroup = 'Finances__c';
			dataCategory = 'My_ASU_Financial_Aid__c';
		}
		if (dataCategory != '')
			kavQuery += ' WITH DATA CATEGORY ' + dcGroup + ' AT ' + dataCategory;
			
		List<Sobject> kavList = new List<Sobject>(database.query(kavQuery));
		system.debug('GRF3: ' + kavList);
		for (Sobject so: kavList) {
			KnowledgeArticleVersion kav = (KnowledgeArticleVersion)so;
			kavIds.add(kav.KnowledgeArticleId);	
		}											   																		    
    	for (KnowledgeArticleViewStat kavs: [SELECT Id, ParentId FROM KnowledgeArticleViewStat WHERE ParentId IN :kavIds AND Channel = 'PKB' ORDER BY ViewCount DESC LIMIT 5]) {
    		articleIds.add(kavs.ParentId);
    	}
    	for (KnowledgeArticleVersion kav: [SELECT id,Title, UrlName, KnowledgeArticleId, PublishStatus, language 
										   FROM KnowledgeArticleVersion 
										   WHERE PublishStatus='Online'
										   AND language ='en_US' 
										   AND KnowledgeArticleId IN :articleIds]) {
			articleRank++;							   	
    		ArticleInfo ai = new ArticleInfo();
    		ai.rank = articleRank;
    		ai.title = kav.Title;
    		//ai.title = testParm;
    		ai.url = getArticleUrl(kav);
    		articles.add(ai);
		}
        system.debug('GRF2: ' + articles);
        return articles;
    }    

/*
	global static string getPkbSiteUrl() {
		// Copy/pasta'd this code from a blog; it's nice except that it DOES NOT WORK. Doh.
		Site s = [SELECT s.Subdomain FROM Site s WHERE Name = 'PKB' LIMIT 1 ];
		if (s == null)
			return '';
		String urlCode = String.valueof(URL.getSalesforceBaseUrl().toExternalForm());
		String [] cuts = urlCode.split('[.]');
		urlCode = '';
		for(Integer i = 1; i < cuts.size(); i++){
		    if(!cuts[i].contains('visual')){
		        urlCode += cuts[i] + '.';
		    }
		}     
		urlCode = urlCode.substring(0, urlCode.length()-1);  
		urlCode = 'http://'+s.Subdomain+'.'+urlCode+'/';
		return urlCode;	
	}
*/
	
	global static string getArticleUrl(KnowledgeArticleVersion kav) {
       	//string urlPrefix = 'http://utocomm-uto.cs10.force.com/pkb/articles/';
 		string urlPrefix = 'https://asu.secure.force.com/kb/articles/';
       	string articleTypeString;
       	string articleIdPrefix = String.valueOf(kav.Id).substring(0,3);
       	if (articleIdPrefix == 'ka1') 
 			articleTypeString = 'FAQ/';
 		else if (articleIdPrefix == 'ka2') 
 			articleTypeString = 'How_To/';
 		else if (articleIdPrefix == 'ka3') 
 			articleTypeString = 'Informational/';
 		else
 			articleTypeString = articleIdPrefix;
 		return urlPrefix + articleTypeString + kav.UrlName;
	}
}