BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."Id",
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	"x"."Country" = 'US' AND "x"."State" = 'CA' OR "x"."Country" = 'US' AND "x"."State" = 'NY'

