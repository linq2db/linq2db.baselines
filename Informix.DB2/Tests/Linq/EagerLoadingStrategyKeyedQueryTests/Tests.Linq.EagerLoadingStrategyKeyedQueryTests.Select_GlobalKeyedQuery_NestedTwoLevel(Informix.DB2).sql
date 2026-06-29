-- Informix.DB2 Informix

SELECT
	c_1.Id,
	c_1.Name
FROM
	Company c_1
ORDER BY
	c_1.Id

-- Informix.DB2 Informix

SELECT
	d.CompanyId,
	d.Id,
	d.Name
FROM
	Department d
WHERE
	d.CompanyId IN (1, 2, 3)
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
		SELECT 103::Int FROM table(set{1})
		UNION ALL
		SELECT 201::Int FROM table(set{1})
		UNION ALL
		SELECT 202::Int FROM table(set{1})
		UNION ALL
		SELECT 203::Int FROM table(set{1})
		UNION ALL
		SELECT 204::Int FROM table(set{1})
		UNION ALL
		SELECT 301::Int FROM table(set{1})
		UNION ALL
		SELECT 302::Int FROM table(set{1})
		UNION ALL
		SELECT 303::Int FROM table(set{1})
		UNION ALL
		SELECT 304::Int FROM table(set{1})
		UNION ALL
		SELECT 305::Int FROM table(set{1})) k_1
		INNER JOIN Employee d ON d.DepartmentId = k_1."item"
ORDER BY
	d.Id

