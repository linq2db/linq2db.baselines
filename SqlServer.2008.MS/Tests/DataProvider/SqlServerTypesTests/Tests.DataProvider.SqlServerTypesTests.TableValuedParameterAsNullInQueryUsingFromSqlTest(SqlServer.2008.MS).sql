BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = NULL

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	(
		select * from  @p
	) [record_1]

