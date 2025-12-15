-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	1 = 0

-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

