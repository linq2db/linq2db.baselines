-- Firebird.4 Firebird4
SELECT
	"x"."Id",
	"x"."Country",
	"x"."State"
FROM
	"CountryStateTable" "x"
WHERE
	"x"."Country" = 'US' AND "x"."State" = 'CA' OR "x"."Country" = 'US' AND "x"."State" = 'NY'

