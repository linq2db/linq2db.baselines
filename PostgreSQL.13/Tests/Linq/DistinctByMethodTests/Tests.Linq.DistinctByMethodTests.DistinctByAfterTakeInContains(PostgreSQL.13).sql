-- PostgreSQL.13 PostgreSQL12
SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" IN (
		SELECT
			t1."ParentID"
		FROM
			(
				SELECT DISTINCT ON (c_2."Value1")
					c_2."ParentID"
				FROM
					(
						SELECT
							c_1."Value1",
							c_1."ParentID"
						FROM
							"Parent" c_1
						ORDER BY
							c_1."ParentID" DESC
						LIMIT 4
					) c_2
				ORDER BY
					c_2."Value1",
					c_2."ParentID" DESC
			) t1
	)

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

