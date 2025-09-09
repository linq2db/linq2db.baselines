BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT FIRST 2
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p

