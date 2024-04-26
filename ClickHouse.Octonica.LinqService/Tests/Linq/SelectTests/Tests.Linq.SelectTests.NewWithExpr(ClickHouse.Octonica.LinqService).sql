BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	concat(p.FirstName, '1')
FROM
	Person p

