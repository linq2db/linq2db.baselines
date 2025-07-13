BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	p_1."ParentID",
	c_1."ChildID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" > 0
		LIMIT :take
	) p_1
		INNER JOIN "Child" c_1 ON p_1."ParentID" = c_1."ParentID"

