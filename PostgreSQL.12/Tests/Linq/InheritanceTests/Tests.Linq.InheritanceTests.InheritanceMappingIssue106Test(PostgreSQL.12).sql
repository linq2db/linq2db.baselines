BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t1."ChildID" = 21 THEN True
		ELSE False
	END,
	t1."ChildID",
	CASE
		WHEN t1."ChildID" = 11 THEN True
		ELSE False
	END
FROM
	"Child" t1
WHERE
	t1."ChildID" = 11 OR t1."ChildID" = 21

