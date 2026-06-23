-- Informix.DB2 Informix

SELECT
	p.Region,
	p.Code,
	p.Name
FROM
	CompositeParent p
ORDER BY
	p.Region,
	p.Code

-- Informix.DB2 Informix

SELECT
	k_1.Item1,
	k_1.Item2,
	d.Id,
	d.ParentRegion,
	d.ParentCode,
	d."Value"
FROM
	(
		SELECT 1::Int AS Item1, 10::Int AS Item2 FROM table(set{1})
		UNION ALL
		SELECT 1::Int, 20::Int FROM table(set{1})
		UNION ALL
		SELECT 2::Int, 10::Int FROM table(set{1})) k_1
		INNER JOIN CompositeChild d ON d.ParentRegion = k_1.Item1 AND d.ParentCode = k_1.Item2
ORDER BY
	d.Id

