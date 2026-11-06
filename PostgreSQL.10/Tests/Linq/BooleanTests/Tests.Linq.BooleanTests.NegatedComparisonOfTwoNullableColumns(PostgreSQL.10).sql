-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."ParentID",
	q."ParentID"
FROM
	"Parent" x,
	"Parent" q
WHERE
	x."Value1" <> q."Value1" OR x."Value1" IS NULL AND q."Value1" IS NOT NULL OR
	x."Value1" IS NOT NULL AND q."Value1" IS NULL

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."ParentID",
	q."ParentID"
FROM
	"Parent" x,
	"Parent" q
WHERE
	x."Value1" <> q."Value1" OR x."Value1" IS NULL AND q."Value1" IS NOT NULL OR
	x."Value1" IS NOT NULL AND q."Value1" IS NULL

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

