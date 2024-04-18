BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" IS NULL

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

