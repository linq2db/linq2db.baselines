-- PostgreSQL.18 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 2

SELECT
	t1."Left_1",
	right_2."Right_1"
FROM
	(
		SELECT
			p."ParentID" as "Left_1"
		FROM
			"Parent" p
		WHERE
			p."ParentID" <> :id1
	) t1
		FULL JOIN (
			SELECT
				right_1."ParentID" as "Right_1"
			FROM
				"Parent" right_1
			WHERE
				right_1."ParentID" <> :id2
		) right_2 ON right_2."Right_1" = t1."Left_1"
ORDER BY
	t1."Left_1"

