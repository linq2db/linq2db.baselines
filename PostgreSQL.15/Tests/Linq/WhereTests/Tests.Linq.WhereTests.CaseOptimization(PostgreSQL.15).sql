-- PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	x."StringValue" LIKE '%Str%' ESCAPE '~' AND x."StringValue" IS NOT NULL

