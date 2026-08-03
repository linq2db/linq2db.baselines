-- Informix.DB2 Informix
SELECT
	CASE
		WHEN i."item" = 0 THEN NULL
		ELSE p.ParentID
	END,
	p.Value1
FROM
	Parent p,
	(
		SELECT 0::Int AS "item" FROM table(set{1})
		UNION ALL
		SELECT 1::Int FROM table(set{1})) i
WHERE
	CASE
		WHEN i."item" = 0 THEN NULL
		ELSE p.ParentID
	END = p.Value1 OR
	i."item" = 0 AND p.Value1 IS NULL

