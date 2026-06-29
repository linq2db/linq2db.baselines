-- SqlServer.2019.MS SqlServer.2019

WITH [CTE_1] ([Value_1], [Id])
AS
(
	SELECT
		[i].[Value],
		[i].[Id]
	FROM
		[TableWithData] [i]
	WHERE
		[i].[Id] = 7
)
UPDATE
	[CTE_1]
SET
	[Value_1] = (
		SELECT TOP (1)
			[l].[Multiplier]
		FROM
			[LookupForCteUpdate] [l]
		WHERE
			[l].[Id] = [CTE_1].[Id]
	)

-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[s].[Id],
	[s].[Value],
	[s].[ValueStr]
FROM
	[TableWithData] [s]
WHERE
	[s].[Id] = 7

