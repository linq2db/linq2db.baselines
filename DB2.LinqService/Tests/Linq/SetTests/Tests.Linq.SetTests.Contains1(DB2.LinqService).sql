BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "param"
				LEFT JOIN "Parent" "a_Parent" ON "param"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = "p"."ParentID" AND ("a_Parent"."Value1" = "p"."Value1" OR "a_Parent"."Value1" IS NULL AND "p"."Value1" IS NULL)
	) AS smallint)
FROM
	"Parent" "p"

