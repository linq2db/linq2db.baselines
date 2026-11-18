-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID",
	CASE
		WHEN p."Value1" BETWEEN 1 AND 3 THEN True
		ELSE False
	END,
	CASE
		WHEN p."Value1" NOT BETWEEN 1 AND 3 THEN True
		ELSE False
	END
FROM
	"Parent" p

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

