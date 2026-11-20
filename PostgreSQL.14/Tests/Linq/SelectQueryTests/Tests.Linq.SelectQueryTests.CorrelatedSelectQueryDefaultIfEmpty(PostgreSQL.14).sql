-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	c_1."ChildID",
	CASE
		WHEN error.c1 OR error.c2 THEN 5
		ELSE 3
	END,
	CASE
		WHEN error.c1 OR error.c2 THEN 'bad'
		ELSE NULL
	END
FROM
	"Parent" p
		CROSS JOIN "Child" c_1
		LEFT JOIN LATERAL (
			SELECT
				c_1."ChildID" <> p."ParentID" * 10 + 1 as c1,
				p."Value1" IS DISTINCT FROM c_1."ParentID" as c2
		) error ON 1=1
WHERE
	c_1."ParentID" = p."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	NULL::text

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	NULL::text

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	NULL::text

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	c_1."ChildID",
	CASE
		WHEN c_1."ChildID" <> p."ParentID" * 10 + 1 OR p."Value1" IS DISTINCT FROM c_1."ParentID"
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN c_1."ChildID" <> p."ParentID" * 10 + 1 OR p."Value1" IS DISTINCT FROM c_1."ParentID"
			THEN 'bad'
		ELSE NULL
	END
FROM
	"Parent" p,
	"Child" c_1
WHERE
	c_1."ParentID" = p."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	NULL::text

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	NULL::text

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	NULL::text

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	'bad'

