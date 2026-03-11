-- Firebird.2.5 Firebird
DECLARE @param Integer -- Int32
SET     @param = 33

SELECT FIRST 2
	"v"."Integer" / CAST(@param AS Int),
	"v"."Decimal" / CAST(@param AS Int),
	"v"."Double" / CAST(@param AS Int)
FROM
	"Issue4469Table" "v"

