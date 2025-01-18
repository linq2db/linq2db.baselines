BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"v"."Integer" / 33,
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"

