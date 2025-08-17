BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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
	[CTE_1]
SET
	[Value_1] = 20,
	[ValueStr] = [CTE_1].[ValueStr]
OUTPUT
	DELETED.[Id],
	DELETED.[Value_1],
	DELETED.[ValueStr],
	INSERTED.[Id],
	INSERTED.[Value_1],
	INSERTED.[ValueStr]

