-- SqlServer.Contained SqlServer.2019
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = {Microsoft.SqlServer.Server.SqlDataRecord,Microsoft.SqlServer.Server.SqlDataRecord,Microsoft.SqlServer.Server.SqlDataRecord}

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	@p [record_1]

