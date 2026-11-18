-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN [r].[OpenedOn]
		ELSE [r].[ClosedOn]
	END
FROM
	[CoarseDayPairRow] [r]
UNION ALL
SELECT
	strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.000')
FROM
	[CoarseDayPairRow] [r_1]

