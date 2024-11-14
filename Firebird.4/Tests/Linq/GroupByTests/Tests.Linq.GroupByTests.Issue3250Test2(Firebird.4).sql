BeforeExecute
-- Firebird.4 Firebird4

SELECT
	(CAST(COUNT(*) AS VarChar(11) CHARACTER SET UNICODE_FSS) || ' items have not been processed, e.g. #' || CAST(MIN("s_1".ID) AS VarChar(11) CHARACTER SET UNICODE_FSS)) || '.'
FROM
	(
		SELECT
			"s"."PersonID" as ID
		FROM
			"Person" "s"
		WHERE
			"s"."LastName" <> 'ERROR'
		HAVING
			COUNT(*) > 0
	) "s_1"

