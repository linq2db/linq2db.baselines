-- DB2 DB2.LUW DB2LUW
WITH "prev" ("ParentID", "ChildID")
AS
(
	SELECT
		"c_1"."ParentID",
		"c_1"."ChildID"
	FROM
		"Child" "c_1"
	WHERE
		"c_1"."ChildID" = 11
	UNION ALL
	SELECT
		"c_2"."ParentID",
		"c_2"."ChildID"
	FROM
		"prev" "t1",
		"Child" "c_2",
		"Parent" "a_Parent"
	WHERE
		"a_Parent"."ParentID" > 0 AND "t1"."ParentID" = "a_Parent"."ParentID" AND
		"t1"."ChildID" + 10 = "c_2"."ChildID"
)
SELECT
	"t2"."ChildID"
FROM
	"prev" "t2"
ORDER BY
	"t2"."ChildID"

