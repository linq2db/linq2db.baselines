-- SQLite.Classic SQLite
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	@value
FROM
	[CacheKeyJsonRow] [t1]
LIMIT 1

