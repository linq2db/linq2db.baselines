BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 2

SELECT
	left_2.left_1,
	t1."ParentID"
FROM
	(
		SELECT
			left_1."ParentID" as left_1
		FROM
			"Parent" left_1
		WHERE
			left_1."ParentID" <> :id1
	) left_2
		FULL JOIN (
			SELECT
				right_1."ParentID"
			FROM
				"Parent" right_1
			WHERE
				right_1."ParentID" <> :id2
		) t1 ON t1."ParentID" = left_2.left_1
ORDER BY
	left_2.left_1

