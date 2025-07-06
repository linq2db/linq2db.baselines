BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 2

SELECT
	t2."ParentID",
	t1."ParentID"
FROM
	(
		SELECT
			left_1."ParentID"
		FROM
			"Parent" left_1
		WHERE
			left_1."ParentID" <> :id1
	) t2
		FULL JOIN (
			SELECT
				right_1."ParentID"
			FROM
				"Parent" right_1
			WHERE
				right_1."ParentID" <> :id2
		) t1 ON t1."ParentID" = t2."ParentID"
ORDER BY
	t2."ParentID"

