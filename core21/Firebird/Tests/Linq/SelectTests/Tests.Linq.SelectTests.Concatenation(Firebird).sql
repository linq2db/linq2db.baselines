BeforeExecute
-- Firebird

SELECT
	"p_1".ID,
	"p_1"."FirstName_1"
FROM
	(
		SELECT
			'123' || "p"."FirstName" || '456' as "FirstName",
			"p"."PersonID" as ID,
			"p"."FirstName" as "FirstName_1"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	) "p_1"
WHERE
	"p_1"."FirstName" = '123John456'

