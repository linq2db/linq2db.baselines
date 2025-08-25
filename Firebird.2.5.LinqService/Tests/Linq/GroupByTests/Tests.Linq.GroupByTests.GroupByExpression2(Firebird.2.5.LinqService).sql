BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."ChildID",
	AVG("t1"."ParentID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ChildID"

