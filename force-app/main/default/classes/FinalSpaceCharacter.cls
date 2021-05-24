/**
 * Model of Final Space character as exposed by https://finalspaceapi.com
 * Author: dariusz.kozlowski@gmail.com
 */

public class FinalSpaceCharacter {

    public Integer id;
    public String name;
    public String status;
    public String species;
    public String gender;
    public String hair;
    public String[] alias;
    public String origin;
    public String[] abilities;
    public String img_url;


    public void debugObject() {
        system.debug('id->' + id);
        system.debug('name->' + name);
        system.debug('status->' + status);
        system.debug('species->' + species);
        system.debug('hair->' + hair);
        system.debug('alias->' + alias);
        system.debug('origin->' + origin);
        system.debug('abilities->' + abilities);
        system.debug('image_url->' + img_url);
    }
}
