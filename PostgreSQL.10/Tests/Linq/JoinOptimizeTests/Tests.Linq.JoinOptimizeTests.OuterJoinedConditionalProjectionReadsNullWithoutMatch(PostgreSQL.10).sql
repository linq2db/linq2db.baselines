-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID",
	CASE
		WHEN x."ParentID" IS NULL THEN NULL
		WHEN x."Value1" IS NULL THEN 'none'
		ELSE NULL
	END
FROM
	"Parent" p
		LEFT JOIN "Parent" x ON x."ParentID" = p."ParentID" + 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID",
	CASE
		WHEN x.c1 IS NULL THEN NULL
		WHEN x."Value1" IS NULL THEN 'none'
		ELSE NULL
	END
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				q."Value1",
				1 as c1,
				q."ParentID"
			FROM
				"Parent" q
		) x ON x."ParentID" = p."ParentID" + 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

