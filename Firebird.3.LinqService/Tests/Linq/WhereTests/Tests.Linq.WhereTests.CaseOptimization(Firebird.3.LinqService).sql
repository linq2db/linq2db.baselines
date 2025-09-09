BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."StringValue" LIKE '%Str%' ESCAPE '~' AND "x"."StringValue" IS NOT NULL

