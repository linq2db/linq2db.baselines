-- SqlServer.2008.MS SqlServer.2008
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END
FROM
	[CoarseDayPairRow] [r]
UNION ALL
SELECT
	CAST(CAST('2026-06-01T10:00:00.0000000' AS DATETIME2) AS DateTime2)
FROM
	[CoarseDayPairRow] [r_1]

