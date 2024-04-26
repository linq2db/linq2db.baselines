BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT FIRST 2
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @ID

