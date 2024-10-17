BeforeExecute
-- SqlServer.2016
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	(
		select * from  @table
	) [record_1]

