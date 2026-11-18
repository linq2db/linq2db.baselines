-- SqlServer.2005.MS SqlServer.2005
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END
FROM
	[CoarseDayPairRow] [r]
UNION ALL
SELECT
	CAST(CAST('2026-06-01T10:00:00.000' AS DATETIME) AS DateTime)
FROM
	[CoarseDayPairRow] [r_1]

