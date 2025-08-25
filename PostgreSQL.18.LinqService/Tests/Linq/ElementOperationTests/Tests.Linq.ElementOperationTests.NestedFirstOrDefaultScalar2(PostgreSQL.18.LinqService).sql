BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	p."ParentID",
	(
		SELECT
			c_1."ChildID"
		FROM
			"Child" c_1
				LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = p."ParentID" AND ("a_Parent"."Value1" = p."Value1" OR "a_Parent"."Value1" IS NULL AND p."Value1" IS NULL)
		ORDER BY
			c_1."ChildID" * c_1."ParentID" DESC
		LIMIT 1
	)
FROM
	"Parent" p

