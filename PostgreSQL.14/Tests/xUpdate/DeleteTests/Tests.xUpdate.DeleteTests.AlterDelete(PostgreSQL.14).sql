-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
				LEFT JOIN "Child" ch ON p."ParentID" = ch."ParentID"
		WHERE
			(ch."ParentID" = -1 OR ch."ParentID" IS NULL AND p."ParentID" = -1) AND
			t1."ParentID" = p."ParentID" AND t1."Value1" = p."Value1"
	)

