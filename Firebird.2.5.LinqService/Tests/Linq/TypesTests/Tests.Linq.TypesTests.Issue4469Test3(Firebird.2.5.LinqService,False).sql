BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @param Double
SET     @param = 33

SELECT FIRST 2
	CAST("v"."Integer" AS Float) / CAST(@param AS Float),
	CAST("v"."Decimal" AS Float) / CAST(@param AS Float),
	"v"."Double" / CAST(@param AS Float)
FROM
	"Issue4469Table" "v"

