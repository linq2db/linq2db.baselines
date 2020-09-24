BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id2 Int32
SET     @id2 = 2

SELECT
	left_3.left_2,
	left_3.left_1,
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT
			p_1.Value1 as left_1,
			p_1.ParentID as left_2
		FROM
			Parent p_1
				INNER JOIN Parent p ON p_1.Value1 = p.Value1 + 2
		WHERE
			p.ParentID <> :id1 AND p_1.ParentID <> :id2
	) left_3
		FULL JOIN (
			SELECT
				p_2.Value1,
				p_2.ParentID
			FROM
				Parent p_2
			WHERE
				p_2.ParentID <> :id1
		) t1 ON (t1.Value1 + 2 IS NOT NULL AND t1.Value1 + 2 = left_3.left_1)
ORDER BY
	left_3.left_2

