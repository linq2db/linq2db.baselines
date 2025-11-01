-- Firebird.4 Firebird4

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

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

