﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Year_1],
	[t1].[Month_1],
	SUM([t1].[SKUPAJ])
FROM
	(
		SELECT
			CAST(strftime('%Y', CASE
				WHEN [n].[DATUM] IS NOT NULL THEN [n].[DATUM]
				ELSE '0001-01-01 00:00:00.000'
			END) AS INTEGER) as [Year_1],
			CAST(strftime('%m', CASE
				WHEN [n].[DATUM] IS NOT NULL THEN [n].[DATUM]
				ELSE '0001-01-01 00:00:00.000'
			END) AS INTEGER) as [Month_1],
			[n].[SKUPAJ]
		FROM
			[Issue3761Table] [n]
		WHERE
			strftime('%Y-%m-%d %H:%M:%f', [n].[DATUM]) < strftime('%Y-%m-%d %H:%M:%f', '2019-01-01 00:00:00.000')
	) [t1]
GROUP BY
	[t1].[Year_1],
	[t1].[Month_1]
UNION ALL
SELECT
	[t2].[Year_1],
	[t2].[Month_1],
	SUM([t2].[SKUPAJ])
FROM
	(
		SELECT
			CAST(strftime('%Y', CASE
				WHEN [n_1].[DATUM] IS NOT NULL THEN [n_1].[DATUM]
				ELSE '0001-01-01 00:00:00.000'
			END) AS INTEGER) as [Year_1],
			CAST(strftime('%m', CASE
				WHEN [n_1].[DATUM] IS NOT NULL THEN [n_1].[DATUM]
				ELSE '0001-01-01 00:00:00.000'
			END) AS INTEGER) as [Month_1],
			[n_1].[SKUPAJ]
		FROM
			[Issue3761Table] [n_1]
		WHERE
			strftime('%Y-%m-%d %H:%M:%f', [n_1].[DATUM]) >= strftime('%Y-%m-%d %H:%M:%f', '2019-01-01 00:00:00.000')
	) [t2]
GROUP BY
	[t2].[Year_1],
	[t2].[Month_1]

