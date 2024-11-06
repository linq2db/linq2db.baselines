BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	(CAST(COUNT(*) AS VarChar(11) CHARACTER SET UNICODE_FSS) || ' items have not been processed, e.g. #' || CAST(MIN("s"."PersonID") AS VarChar(11) CHARACTER SET UNICODE_FSS)) || '.'
FROM
	"Person" "s"
WHERE
	"s"."LastName" <> 'ERROR' AND COUNT(*) > 0

