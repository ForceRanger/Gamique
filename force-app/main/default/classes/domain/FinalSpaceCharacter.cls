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


    /**
     * Returns mapping as per table definition for external object
     * in FinalSpaceSourceConnection class.
     */
    public Map<String, Object> getFieldMapping() {
        Map<String, Object> retValue = new Map<String, Object>();

        retValue.put('Character Id', id);
        retValue.put('Name', name);
        retValue.put('Status', status);
        retValue.put('Species', species);
        retValue.put('Hair', hair);
        retValue.put('Alias', alias);
        retValue.put('Origin', origin);
        retValue.put('Abilities', abilities);
        retValue.put('Image URL', img_url);
        retValue.put('ExternalId', id);
        retValue.put('Gender', gender);
        return retValue;
    }

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
