BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(r.PersonID) as c1
FROM
	Person r
UNION ALL
SELECT
	r_1.PersonID as c1
FROM
	Person r_1

