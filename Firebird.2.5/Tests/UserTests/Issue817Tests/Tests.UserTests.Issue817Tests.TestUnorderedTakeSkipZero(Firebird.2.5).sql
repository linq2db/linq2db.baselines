BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @skip Integer -- Int32
SET     @skip = 0

SELECT FIRST @take SKIP @skip
	1
FROM
	"Person" "t1"

