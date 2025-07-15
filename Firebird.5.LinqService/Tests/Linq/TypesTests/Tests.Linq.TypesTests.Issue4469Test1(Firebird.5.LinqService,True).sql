BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"v"."Integer" / 33,
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

