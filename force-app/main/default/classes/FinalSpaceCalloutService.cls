public class FinalSpaceCalloutService {

    public static String BASE_URL = 'https://finalspaceapi.com/api/v0/';

    /**
     * Method retrieves information about Final Space character
     */
    public  static FinalSpaceCharacter getCharacterById(Integer Id) {
        Http h = new Http();
        FinalSpaceCharacter character = null;

        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint(BASE_URL + 'character/' + Id);

        HttpResponse response = h.send(request);
        system.debug(response);
        system.debug(response.getBody());

        if (response.getStatusCode() == 200) {
            character = (FinalSpaceCharacter)JSON.deserializeStrict(response.getBody(), FinalSpaceCharacter.class);
        }

        character.debugObject();

        return character;
    }

    public static FinalSpaceCharacter[] getAllCharacters() {
        FinalSpaceCharacters charactersObject;
        FinalSpaceCharacter[] characters;
        Http h = new Http();

        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint(BASE_URL + '/character/');

        HttpResponse response = h.send(request);

        if (response.getStatusCode() == 200) {
            charactersObject = (FinalSpaceCharacters)JSON.deserialize(
                '{ "characters": ' + response.getBody()  + '}', FinalSpaceCharacters.class);

            characters = charactersObject.characters;
        }

        return characters;
    }

}
