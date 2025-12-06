-- SqlServer.2017.MS SqlServer.2017
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = NULL

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	(
		select * from  @p
	) [record_1]

