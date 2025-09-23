BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 3

SELECT
	"p"."PersonID",
	'123' || "p"."FirstName" || '0123451234'
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND (11 - Position('321', Reverse(Substring(('123' || "p"."FirstName" || '0123451234') from 6 for 6)))) - CAST(@Length AS Int) = 7 AND
	Position('123', Left('123' || "p"."FirstName" || '0123451234', 11), 6) <> 0

