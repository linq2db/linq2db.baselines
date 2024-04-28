BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	concat('I-', toString(x.PersonID)) as Id,
	x.FirstName as Name
FROM
	Person x
UNION ALL
SELECT
	toString(NULL) as Id,
	concat('QUASI-', x_1.FirstName) as Name
FROM
	Person x_1

