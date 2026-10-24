-- SqlServer.Contained.MS SqlServer.2019
SELECT
	IIF([r].[Id] > 0, [r].[OpenedOn], [r].[ClosedOn])
FROM
	[CoarseDayPairRow] [r]
UNION ALL
SELECT
	CAST(DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7) AS DateTime2)
FROM
	[CoarseDayPairRow] [r_1]

