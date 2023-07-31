BeforeExecute
-- SqlServer.2014
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = {Microsoft.SqlServer.Server.SqlDataRecord,Microsoft.SqlServer.Server.SqlDataRecord,Microsoft.SqlServer.Server.SqlDataRecord}

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	@table [record_1]

