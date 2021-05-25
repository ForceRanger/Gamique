global class FinalSpaceDataSourceProvider extends DataSource.Provider {

    override global List<DataSource.AuthenticationCapability> getAuthenticationCapabilities() {
        List<DataSource.AuthenticationCapability> aCapabilities = 
                new List<DataSource.AuthenticationCapability>();

        aCapabilities.add(DataSource.AuthenticationCapability.ANONYMOUS);

        return aCapabilities;
    }

    override global List<DataSource.Capability> getCapabilities() {
        List<DataSource.Capability> capabilities = new List<DataSource.Capability>();

        capabilities.add(DataSource.Capability.ROW_QUERY);

        return capabilities;
    }

    override global DataSource.Connection getConnection(DataSource.ConnectionParams params) {
        return new FinalSpaceSourceConnection(params);
    }
}
