﻿BeforeExecute
-- SqlServer.2019
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = Tests.DataProvider.SqlServerTypesTests+<GetSqlDataRecords>d__22

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	@table_1 [record_1]

