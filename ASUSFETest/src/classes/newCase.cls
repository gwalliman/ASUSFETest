public class newCase {

    public newCase(ApexPages.StandardController controller) {

    }
    public Case c { get; set; }
         
    public newCase() {
        c = new Case();
    }
    
    public PageReference submitCase() {
        try {
            INSERT c;
            return new PageReference('/viewcase?id=');
        } catch (Exception e) {
            ApexPages.addMessages(e);
            return null;
        }

    }
}