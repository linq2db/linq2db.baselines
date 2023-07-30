BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "t1"

BeforeExecute
-- Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT SKIP @skip
	1
FROM
	"Person" "t1"

