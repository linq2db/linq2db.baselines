BeforeExecute
-- Firebird.5 Firebird4
DECLARE @personId Integer -- Int32
SET     @personId = 1

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @personId AND "p"."PersonID" = @personId AND
	"p"."PersonID" = @personId

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @personId Integer -- Int32
SET     @personId = 1
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @personId AND "p"."PersonID" = @personId AND
	"p"."PersonID" = @personId_1

