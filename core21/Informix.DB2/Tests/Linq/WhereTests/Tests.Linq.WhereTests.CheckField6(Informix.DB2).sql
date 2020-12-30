BeforeExecute
-- Informix.DB2 Informix

SELECT
	p_1.Value1,
	p_1.Value_1,
	p_1.ParentID
FROM
	(
		SELECT
			p.ParentID,
			p.Value1 * 100 as Value_1,
			p.Value1
		FROM
			Parent p
	) p_1
WHERE
	p_1.ParentID = 1 AND p_1.Value_1 > 0

