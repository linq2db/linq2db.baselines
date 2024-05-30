BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
FETCH NEXT @take ROWS ONLY

