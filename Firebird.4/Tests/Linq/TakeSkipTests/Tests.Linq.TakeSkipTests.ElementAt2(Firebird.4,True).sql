BeforeExecute
-- Firebird.4 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1
ORDER BY
	"p"."ParentID"
OFFSET @n ROWS FETCH NEXT @take ROWS ONLY 

