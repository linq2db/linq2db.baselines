BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id OR "t1"."PersonID" <= @id

