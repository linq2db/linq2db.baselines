-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	CASE
		WHEN p."Value1" IS NOT NULL THEN p."Value1"
		ELSE 0
	END
FROM
	"Parent" p

