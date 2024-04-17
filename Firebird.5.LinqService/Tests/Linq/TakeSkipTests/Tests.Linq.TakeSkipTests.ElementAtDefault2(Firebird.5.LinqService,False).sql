BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1
OFFSET 300000 ROWS FETCH NEXT 1 ROWS ONLY 

