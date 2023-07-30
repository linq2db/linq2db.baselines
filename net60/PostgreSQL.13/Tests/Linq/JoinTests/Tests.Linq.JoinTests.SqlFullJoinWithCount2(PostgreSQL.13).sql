BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	COUNT(left_1."ParentID"),
	COUNT(p_1."ParentID"),
	COUNT(*)
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" <> :id
	) left_1
		FULL JOIN "Parent" p_1 ON p_1."ParentID" = left_1."ParentID"
LIMIT :take

