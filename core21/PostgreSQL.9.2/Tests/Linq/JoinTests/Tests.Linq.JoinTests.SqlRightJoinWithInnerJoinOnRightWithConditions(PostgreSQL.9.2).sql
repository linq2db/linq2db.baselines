BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 2
DECLARE @id3 Integer -- Int32
SET     @id3 = 1

SELECT
	left_1.left_2,
	left_1.left_1,
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT
			p_1."Value1" as left_1,
			p_1."ParentID" as left_2
		FROM
			"Parent" p_1
				INNER JOIN "Parent" p ON p_1."Value1" = p."Value1" + 2
		WHERE
			p."ParentID" <> :id1 AND p_1."ParentID" <> :id2
	) left_1
		RIGHT JOIN (
			SELECT
				p_2."Value1",
				p_2."ParentID"
			FROM
				"Parent" p_2
			WHERE
				p_2."ParentID" <> :id3
		) t1 ON t1."Value1" + 2 = left_1.left_1
ORDER BY
	left_1.left_2

