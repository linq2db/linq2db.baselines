BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	(CHAR_LENGTH("p"."LastName") - Position('p', Reverse("p"."LastName"))) - CAST(@Length AS Int) = 1 AND
	Position('p', "p"."LastName") <> 0 AND "p"."PersonID" = 1

