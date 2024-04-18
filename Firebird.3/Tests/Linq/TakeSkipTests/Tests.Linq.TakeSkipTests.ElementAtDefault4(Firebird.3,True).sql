BeforeExecute
-- Firebird.3 Firebird3
DECLARE @n Integer -- Int32
SET     @n = 300000
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1
OFFSET @n ROWS FETCH NEXT @take ROWS ONLY 

