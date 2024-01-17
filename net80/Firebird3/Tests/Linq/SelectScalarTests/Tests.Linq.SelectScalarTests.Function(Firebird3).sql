BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"c_1"."ChildID"
FROM
	"Child" "c_1"

