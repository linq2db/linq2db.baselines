-- Informix.DB2 Informix
DECLARE @minId Integer(4) -- Int32
SET     @minId = 2

SELECT
	m_1.Id,
	d.Id,
	d.DepartmentId,
	d.Name,
	d.Salary
FROM
	Department m_1
		INNER JOIN Employee d ON d.DepartmentId = m_1.Id
WHERE
	d.Id >= @minId
ORDER BY
	d.Id,
	m_1.Id

-- Informix.DB2 Informix

SELECT
	d.Id,
	d.Name
FROM
	Department d
ORDER BY
	d.Id

