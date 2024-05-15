BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 300000

SELECT FIRST 1 SKIP @skip
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1

