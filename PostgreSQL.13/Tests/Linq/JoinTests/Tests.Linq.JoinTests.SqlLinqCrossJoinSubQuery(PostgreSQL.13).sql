BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10

SELECT
	p_1."ParentID",
	t1."ChildID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" > 0
		LIMIT :take
	) p_1,
	(
		SELECT
			c_1."ChildID"
		FROM
			"Child" c_1
		LIMIT :take_1
	) t1

