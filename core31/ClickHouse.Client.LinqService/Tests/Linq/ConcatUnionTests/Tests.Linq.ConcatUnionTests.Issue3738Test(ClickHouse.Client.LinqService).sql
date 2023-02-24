BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	concat('I-', toString(x.PersonID)),
	x.FirstName
FROM
	Person x
UNION ALL
SELECT
	NULL,
	concat('QUASI-', x_1.FirstName)
FROM
	Person x_1

