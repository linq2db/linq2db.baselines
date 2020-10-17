BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				c_1."ParentID" as "ch",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 0
		) t1 ON p."ParentID" = t1."ch"
WHERE
	(t1."ch" IS NULL AND t1."ChildID" IS NULL)

