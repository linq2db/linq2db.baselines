BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	COUNT(left_1."ParentID"),
	COUNT(t1."ParentID"),
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
		FULL JOIN (
			SELECT
				p_1."ParentID"
			FROM
				"Parent" p_1
			WHERE
				p_1."ParentID" <> :id_1
		) t1 ON t1."ParentID" = left_1."ParentID"
LIMIT :take

