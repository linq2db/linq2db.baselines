BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	1 = 0

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

