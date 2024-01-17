BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = NULL

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	(
		select * from  @table
	) [record_1]

