BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" ch_1
		WHERE
			p."ParentID" = ch_1."ParentID"
	),
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		INNER JOIN LATERAL (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				p."ParentID" = ch."ParentID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	p."ParentID" = 1

