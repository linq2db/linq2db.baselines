BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	1
FROM
	"Parent" "p"

