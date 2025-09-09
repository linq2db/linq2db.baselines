BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p_1.ID,
	p_1.Value1
FROM
	(
		SELECT
			CASE
				WHEN i."item" = 0 THEN NULL
				ELSE p.ParentID
			END as ID,
			p.Value1
		FROM
			Parent p
				CROSS JOIN (
					SELECT 0::Int AS "item" FROM table(set{1})
					UNION ALL
					SELECT 1::Int FROM table(set{1})) i
	) p_1
WHERE
	p_1.ID = p_1.Value1 OR p_1.ID IS NULL AND p_1.Value1 IS NULL

