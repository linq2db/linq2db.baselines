BeforeExecute
-- Informix.DB2 Informix

SELECT
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT
					p.ParentID + 1 as ParentID,
					p.Value1
				FROM
					Parent p
			) p_1
		WHERE
			p_1.ParentID < 3 AND (p_3.Value1 = p_1.Value1 OR p_3.Value1 IS NULL AND p_1.Value1 IS NULL) AND
			p_1.ParentID > 0
	)
FROM
	(
		SELECT
			p_2.ParentID + 1 as ParentID,
			p_2.Value1
		FROM
			Parent p_2
	) p_3
WHERE
	p_3.ParentID > 0
GROUP BY
	p_3.Value1

