BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT
	"p"."PersonID",
	'123' || "p"."FirstName" || '012345'
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND Char_Length('123' || "p"."FirstName" || '012345') - Position('321', Reverse(Substring(('123' || "p"."FirstName" || '012345') from 6 for (Char_Length('123' || "p"."FirstName" || '012345') - 5)))) = 10 AND
	Position(@p, '123' || "p"."FirstName" || '012345', 6) <> 0

