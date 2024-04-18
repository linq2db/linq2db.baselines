BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"l"."ParentID"
FROM
	"Child" "l"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	1
FROM
	"Parent" "sep"

