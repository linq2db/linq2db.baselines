-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

WITH [CTE_1] ([Value_1], [ValueStr], [Id])
AS
(
	SELECT TOP (@take)
		[i].[Value],
		[i].[ValueStr],
		[i].[Id]
	FROM
		[TableWithData] [i]
	WHERE
		[i].[Id] = 7
	ORDER BY
		[i].[Id]
)
UPDATE
	[u]
SET
	[u].[Value_1] = 20,
	[u].[ValueStr] = [u].[ValueStr]
OUTPUT
	DELETED.[Id],
	DELETED.[Value_1],
	DELETED.[ValueStr],
	INSERTED.[Id],
	INSERTED.[Value_1],
	INSERTED.[ValueStr]
FROM
	[CTE_1] [u],
	[CTE_1] [t1]

