BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Children"."ParentID" + 1
FROM
	"Parent" "_"
		INNER JOIN "Child" "a_Children" ON "_"."ParentID" = "a_Children"."ParentID"
WHERE
	("a_Children"."ParentID" + 1 > 1 OR "a_Children"."ParentID" + 1 > 2) AND
	("a_Children"."ParentID" + 1 > 0 OR "a_Children"."ParentID" + 1 > 3)

