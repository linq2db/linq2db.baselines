-- SQLite.Classic SQLite
DECLARE @value Integer -- Int32
SET     @value = 1

SELECT
	@value
FROM
	[CacheKeyJsonRow] [t1]
LIMIT 1

