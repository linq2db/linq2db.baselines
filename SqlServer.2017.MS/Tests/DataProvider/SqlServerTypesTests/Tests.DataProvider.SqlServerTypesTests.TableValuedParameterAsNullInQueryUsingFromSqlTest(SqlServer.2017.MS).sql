BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	(
		select * from  @table
	) [record_1]

