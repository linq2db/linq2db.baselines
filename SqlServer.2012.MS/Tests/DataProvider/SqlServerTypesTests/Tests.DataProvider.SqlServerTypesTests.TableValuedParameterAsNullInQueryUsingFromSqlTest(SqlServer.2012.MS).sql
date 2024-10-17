BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	(
		select * from  @table
	) [record_1]

