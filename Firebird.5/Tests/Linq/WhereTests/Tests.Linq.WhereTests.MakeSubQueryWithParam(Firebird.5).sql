-- Firebird.5 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	("p"."PersonID" + CAST(@n AS Int)) - 1,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" + CAST(@n AS Int) = 2

