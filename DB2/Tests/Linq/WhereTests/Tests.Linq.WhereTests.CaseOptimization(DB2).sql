-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."StringValue" LIKE '%Str%' ESCAPE '~' AND "x"."StringValue" IS NOT NULL

