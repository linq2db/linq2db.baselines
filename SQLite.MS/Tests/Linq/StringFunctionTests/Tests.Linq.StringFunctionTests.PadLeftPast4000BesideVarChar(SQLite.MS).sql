-- SQLite.MS SQLite
SELECT
	CASE
		WHEN Length([t].[V50]) >= 6000 THEN [t].[V50]
		ELSE SUBSTR(REPLACE(HEX(ZEROBLOB(6000)), '0', 'b'), 1, 6000 - Length([t].[V50])) || [t].[V50]
	END
FROM
	[ShortVarCharRow] [t]
LIMIT 2

