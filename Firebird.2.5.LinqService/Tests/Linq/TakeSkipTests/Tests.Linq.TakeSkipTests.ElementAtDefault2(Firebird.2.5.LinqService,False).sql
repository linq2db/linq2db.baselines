BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1 SKIP 300000
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1

