-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id2 Integer -- Int32
SET     @id2 = 2
DECLARE @id1 Integer -- Int32
SET     @id1 = 1

SELECT
	t1."Left_1",
	right_2."Right_1"
FROM
	(
		SELECT
			left_1."ParentID" as "Left_1",
			left_1."Value1"
		FROM
			"Parent" left_1
				INNER JOIN "Parent" left2 ON left_1."Value1" = left2."Value1" + 2
		WHERE
			left_1."ParentID" <> :id2 AND left2."ParentID" <> :id1
	) t1
		RIGHT JOIN (
			SELECT
				right_1."ParentID" as "Right_1",
				right_1."Value1" + 2 as c1
			FROM
				"Parent" right_1
			WHERE
				right_1."ParentID" <> :id1
		) right_2 ON right_2.c1 = t1."Value1" OR right_2.c1 IS NULL AND t1."Value1" IS NULL
ORDER BY
	t1."Left_1"

