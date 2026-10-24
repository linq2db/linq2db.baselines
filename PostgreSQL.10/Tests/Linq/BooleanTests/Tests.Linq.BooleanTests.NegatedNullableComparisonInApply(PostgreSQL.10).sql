-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID",
	c_2."IsOne"
FROM
	"Parent" p
		INNER JOIN LATERAL (
			SELECT
				CASE
					WHEN c_1."Value1" = 1 THEN True
					ELSE False
				END as "IsOne"
			FROM
				"Parent" c_1
			WHERE
				c_1."ParentID" = p."ParentID" AND (c_1."Value1" <> 1 OR c_1."Value1" IS NULL)
			LIMIT 1
		) c_2 ON 1=1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN LATERAL (
			SELECT
				1 as c1
			FROM
				"Parent" c_1
			WHERE
				c_1."ParentID" = p."ParentID" AND NOT (c_1."Value1" = 1 AND c_1."Value1" IS NOT NULL OR c_1."ParentID" = 3)
			LIMIT 1
		) c_2 ON 1=1

