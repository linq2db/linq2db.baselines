BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	concat('I-', toString(x.PersonID)) as c1,
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	toString(NULL) as c1,
	concat('QUASI-', x_1.FirstName) as FirstName
FROM
	Person x_1

