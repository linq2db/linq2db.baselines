BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" p
		WHERE
			p."ParentID" < 2 AND (p_1."Value1" = p."Value1" OR p_1."Value1" IS NULL AND p."Value1" IS NULL) AND
			p."ParentID" > -1
	)
FROM
	"Parent" p_1
WHERE
	p_1."ParentID" > -1
GROUP BY
	p_1."Value1"

