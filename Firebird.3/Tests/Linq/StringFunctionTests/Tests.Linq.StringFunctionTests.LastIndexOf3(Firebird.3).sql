-- Firebird.3 Firebird3

SELECT
	"p_1".ID,
	"p_1"."FirstName"
FROM
	(
		SELECT
			'123' || "p"."FirstName" || '0123451234' as "FirstName",
			"p"."PersonID" as ID
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	) "p_1"
WHERE
	1 = Position('321', Reverse(Substring("p_1"."FirstName" from 6 for 6))) AND
	Position('123', Left("p_1"."FirstName", 11), 6) <> 0

