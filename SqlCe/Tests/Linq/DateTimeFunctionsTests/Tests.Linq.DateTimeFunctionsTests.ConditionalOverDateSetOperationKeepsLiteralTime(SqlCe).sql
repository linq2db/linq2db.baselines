-- SqlCe
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END
FROM
	[CoarseDayPairRow] [r]
UNION ALL
SELECT
	CAST('2026-06-01 10:00:00.000' AS DateTime)
FROM
	[CoarseDayPairRow] [r_1]

