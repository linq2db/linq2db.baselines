-- Firebird.4 Firebird4

SELECT
	"p_1".ID,
	"p_1"."FirstName"
FROM
	(
		SELECT
			'123' || "p"."FirstName" || '012345' as "FirstName",
			"p"."FirstName" as "FirstName_1",
			"p"."PersonID" as ID
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	) "p_1"
WHERE
	CHAR_LENGTH('123' || "p_1"."FirstName_1" || '012345') - Position('321', Reverse(Substring("p_1"."FirstName" from 6 for (CHAR_LENGTH('123' || "p_1"."FirstName_1" || '012345') - 5)))) = 10 AND
	Position('123', "p_1"."FirstName", 6) <> 0

