-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "t1"

-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" "t1"
OFFSET @skip ROWS

