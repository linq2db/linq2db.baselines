-- PostgreSQL.13 PostgreSQL

DELETE FROM
	"Parent" t1
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Parent" t2
				LEFT JOIN "Child" ch ON t2."ParentID" = ch."ParentID"
		WHERE
			(ch."ParentID" = -1 OR ch."ParentID" IS NULL AND t2."ParentID" = -1) AND
			t1."ParentID" = t2."ParentID" AND t1."Value1" = t2."Value1"
	)

