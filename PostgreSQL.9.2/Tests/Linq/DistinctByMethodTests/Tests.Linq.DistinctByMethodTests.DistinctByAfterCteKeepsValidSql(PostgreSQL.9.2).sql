-- PostgreSQL.9.2 PostgreSQL
WITH "CTE_1" ("ParentID", "Value1")
AS
(
	SELECT
		t1."ParentID",
		t1."Value1"
	FROM
		"Parent" t1
	ORDER BY
		t1."ParentID" DESC
)
SELECT
	p_1."Value1"
FROM
	(
		SELECT DISTINCT ON (p."Value1")
			p."Value1"
		FROM
			"CTE_1" p
		WHERE
			p."ParentID" > 0
		ORDER BY
			p."Value1"
	) p_1

