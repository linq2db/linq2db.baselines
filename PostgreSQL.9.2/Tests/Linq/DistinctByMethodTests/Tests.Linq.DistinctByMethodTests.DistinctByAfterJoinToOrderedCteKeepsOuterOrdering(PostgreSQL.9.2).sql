-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1000

WITH "CTE_1" ("ParentID")
AS
(
	SELECT
		t1."ParentID"
	FROM
		"Child" t1
	ORDER BY
		t1."ChildID"
	LIMIT :take
)
SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT DISTINCT ON (p."Value1")
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
				INNER JOIN "CTE_1" c_1 ON p."ParentID" = c_1."ParentID"
		ORDER BY
			p."Value1",
			p."ParentID" DESC
	) t2
ORDER BY
	t2."ParentID" DESC

