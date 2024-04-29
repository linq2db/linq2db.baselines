BeforeExecute
-- Firebird.3 Firebird3
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1
ORDER BY
	"p"."ParentID"
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

