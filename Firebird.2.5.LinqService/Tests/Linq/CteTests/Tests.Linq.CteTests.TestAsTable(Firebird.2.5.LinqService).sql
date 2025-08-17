BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

WITH CTE1_ ("ParentID", "ChildID")
AS
(
	SELECT
		"t1"."ParentID",
		"t1"."ChildID"
	FROM
		"Child" "t1"
)
SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	CTE1_ "t2"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

