BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	p1."ParentID",
	p1."Value1",
	o."ParentID",
	o."Sum1"
FROM
	"Parent" p1
		LEFT JOIN (
			SELECT
				p."ParentID",
				Sum(p."ParentID") as "Sum1"
			FROM
				"Parent" p
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						"Child" ch
					WHERE
						ch."ParentID" = p."ParentID"
				)
			GROUP BY
				p."ParentID"
		) o ON o."ParentID" = p1."ParentID"

