BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"Person" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT SKIP @skip
	1
FROM
	"Person" "t1"

