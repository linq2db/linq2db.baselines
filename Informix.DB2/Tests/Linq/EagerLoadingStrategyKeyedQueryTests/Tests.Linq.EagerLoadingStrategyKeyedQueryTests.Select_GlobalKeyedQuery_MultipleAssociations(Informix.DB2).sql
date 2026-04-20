-- Informix.DB2 Informix

SELECT
	d.Id,
	d.Name
FROM
	Department d
ORDER BY
	d.Id

-- Informix.DB2 Informix

SELECT
	k_1."item",
	d.Id,
	d.DepartmentId,
	d.Name,
	d.Salary
FROM
	(
		SELECT 101::Int AS "item" FROM table(set{1})
		UNION ALL
		SELECT 102::Int FROM table(set{1})
		UNION ALL
		SELECT 103::Int FROM table(set{1})) k_1
		INNER JOIN Employee d ON d.DepartmentId = k_1."item"
ORDER BY
	d.Id

-- Informix.DB2 Informix

SELECT
	k_1."item",
	d.Id,
	d.DepartmentId,
	d.Name,
	d.Rate
FROM
	(
		SELECT 101::Int AS "item" FROM table(set{1})
		UNION ALL
		SELECT 102::Int FROM table(set{1})
		UNION ALL
		SELECT 103::Int FROM table(set{1})) k_1
		INNER JOIN Contractor d ON d.DepartmentId = k_1."item"
ORDER BY
	d.Id

