-- Firebird.2.5 Firebird

SELECT FIRST 2
	CAST("v"."Integer" AS DOUBLE PRECISION) / 33,
	CAST("v"."Decimal" AS DOUBLE PRECISION) / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"

