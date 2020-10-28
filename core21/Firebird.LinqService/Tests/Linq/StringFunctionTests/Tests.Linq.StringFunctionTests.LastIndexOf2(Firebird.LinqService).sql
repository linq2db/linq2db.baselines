BeforeExecute
-- Firebird

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN Position('123', '123' || "p"."FirstName" || '012345', 6) = 0
			THEN -1
		ELSE Char_Length('123' || "p"."FirstName" || '012345') - Position('321', Reverse(Substring(('123' || "p"."FirstName" || '012345') from 6 for (Char_Length('123' || "p"."FirstName" || '012345') - 5)))) - 2
	END = 8 AND
	"p"."PersonID" = 1

