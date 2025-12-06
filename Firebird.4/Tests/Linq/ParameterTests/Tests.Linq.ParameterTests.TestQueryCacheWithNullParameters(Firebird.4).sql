-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	1 = 0

-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

