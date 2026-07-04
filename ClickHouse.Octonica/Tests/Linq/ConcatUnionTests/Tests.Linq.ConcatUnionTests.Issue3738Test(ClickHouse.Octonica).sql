-- ClickHouse.Octonica ClickHouse

SELECT
	concat('I-', toString(x.PersonID)) as Id,
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	toString(NULL) as Id,
	concat('QUASI-', x_1.FirstName) as FirstName
FROM
	Person x_1

