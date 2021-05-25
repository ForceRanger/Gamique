global class FinalSpaceSourceConnection extends DataSource.Connection {

    global FinalSpaceSourceConnection(DataSource.ConnectionParams connParameters) {

    }
    
    override global List<DataSource.Table> sync() {

        List<DataSource.Table> availableTables = new List<DataSource.Table>();

        List<DataSource.Column> characterColumns = new List<DataSource.Column>();

        characterColumns.add(DataSource.Column.text('Id', 20));
        characterColumns.add(DataSource.Column.text('Name', 255));
        characterColumns.add(DataSource.Column.text('Status', 100));
        characterColumns.add(DataSource.Column.text('Gender', 100));
        characterColumns.add(DataSource.Column.text('Hair', 100));
        characterColumns.add(DataSource.Column.text('Origin', 100));
        characterColumns.add(DataSource.Column.url('Image URL'));

        // Mandatory Columns
        characterColumns.add(DataSource.Column.text('ExternalId', 255));
        characterColumns.add(DataSource.Column.url('DisplayUrl')); 

        availableTables.add(DataSource.Table.get('FinalSpaceCharactes', 'Name', characterColumns));

        return availableTables;
    }

    override global DataSource.TableResult query(DataSource.QueryContext queryContext) {
        FinalSpaceCharacter[] fpCharacters = FinalSpaceCalloutService.getAllCharacters();
        List<Map<String, Object>> rows = new List<Map<String, Object>>();

        for (FinalSpaceCharacter fschar : fpCharacters) {
            rows.add(fsChar.getFieldMapping());
        }        

        return DataSource.TableResult.get(queryContext, DataSource.QueryUtils.process(queryContext, rows));
    }
}
