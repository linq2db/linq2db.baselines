-- SqlServer.2022.MS SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = NULL

SELECT
	[record_1].[Id],
	[record_1].[Name]
FROM
	(
		select * from  @p
	) [record_1]

