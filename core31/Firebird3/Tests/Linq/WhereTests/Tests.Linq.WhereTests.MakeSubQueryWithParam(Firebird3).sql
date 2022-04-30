BeforeExecute
-- Firebird3 Firebird
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"p"."PersonID" + Cast(@n as Int),
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" + Cast(@n as Int) = 2

