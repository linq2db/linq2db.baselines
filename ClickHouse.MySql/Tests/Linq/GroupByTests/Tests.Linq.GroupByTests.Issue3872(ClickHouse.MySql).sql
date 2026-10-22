-- ClickHouse.MySql ClickHouse
SELECT
	maxOrNull(r.PersonID) as Max_1
FROM
	Person r
UNION ALL
SELECT
	r_1.PersonID as Max_1
FROM
	Person r_1

