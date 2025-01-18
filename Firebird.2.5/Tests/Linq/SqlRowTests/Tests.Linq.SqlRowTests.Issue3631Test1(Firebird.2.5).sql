BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	"x"."Country" = 'US' AND "x"."State" = 'CA' OR "x"."Country" = 'US' AND "x"."State" = 'NY'

