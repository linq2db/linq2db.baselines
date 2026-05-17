-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	1 = 0

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" = @id

