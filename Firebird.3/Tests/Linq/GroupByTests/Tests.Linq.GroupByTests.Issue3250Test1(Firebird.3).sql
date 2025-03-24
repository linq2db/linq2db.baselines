BeforeExecute
--  Firebird.3 Firebird3

SELECT
	(CAST(COUNT(*) AS VarChar(11) CHARACTER SET UNICODE_FSS) || ' items have not been processed, e.g. #' || CAST(MIN("g_1"."PersonID") AS VarChar(11) CHARACTER SET UNICODE_FSS)) || '.'
FROM
	"Person" "g_1"
WHERE
	"g_1"."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

