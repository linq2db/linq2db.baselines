BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."PersonID",
	'123' || "p"."FirstName" || '012345'
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND (Char_Length('123' || "p"."FirstName" || '012345') - Position('321', Reverse(Substring(('123' || "p"."FirstName" || '012345') from 6 for (Char_Length('123' || "p"."FirstName" || '012345') - 5))))) - Char_Length('123') = 7 AND
	Position('123', '123' || "p"."FirstName" || '012345', 6) <> 0

