BeforeExecute
-- Firebird.4 Firebird4

WITH RECURSIVE MY_CTE ("ChildID", "ParentID", "GrandChildID")
AS
(
	SELECT
		"gc1"."ChildID",
		"gc1"."GrandChildID",
		"gc1"."GrandChildID"
	FROM
		"GrandChild" "gc1"
	UNION ALL
	SELECT
		"ct"."ChildID",
		"ct"."ParentID",
		"ct"."ChildID" + 1
	FROM
		"GrandChild" "gc"
			INNER JOIN "Parent" "p" ON "p"."ParentID" = "gc"."ParentID"
			INNER JOIN MY_CTE "ct" ON "ct"."ChildID" = "gc"."ChildID"
	WHERE
		"ct"."GrandChildID" <= 10
)
SELECT
	"t1"."ChildID",
	"t1"."ParentID",
	"t1"."GrandChildID"
FROM
	MY_CTE "t1"

