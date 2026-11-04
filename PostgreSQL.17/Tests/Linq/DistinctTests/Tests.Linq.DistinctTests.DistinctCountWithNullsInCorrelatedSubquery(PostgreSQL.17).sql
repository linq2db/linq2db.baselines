-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	p."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					x."Value1"
				FROM
					"Parent" x
				WHERE
					x."ParentID" <= p."ParentID"
			) t1
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					v."Value1" as "AfterWhere"
				FROM
					"Parent" v
				WHERE
					v."ParentID" <= p."ParentID" AND (v."Value1" <> 1 OR v."Value1" IS NULL)
			) t2
	)
FROM
	"Parent" p
ORDER BY
	p."ParentID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

