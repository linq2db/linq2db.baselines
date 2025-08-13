BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	COUNT(*)
FROM
	Person p
GROUP BY
	p.FirstName

