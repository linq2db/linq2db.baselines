-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN p."Value1" IS NOT NULL THEN p."Value1"
		ELSE 0
	END
FROM
	"Parent" p

