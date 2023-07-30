BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	(
		select * from  @table
	) [record_1]

