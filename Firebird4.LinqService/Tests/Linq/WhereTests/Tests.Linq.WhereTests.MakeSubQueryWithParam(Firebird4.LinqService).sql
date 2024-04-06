BeforeExecute
-- Firebird4 Firebird
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" + CAST(@n AS Int) = 2

