BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = NULL

SELECT 
	[record_1].[Id], 
	[record_1].[Name]
FROM
	(
		select * from  @table_1
	) [record_1]

