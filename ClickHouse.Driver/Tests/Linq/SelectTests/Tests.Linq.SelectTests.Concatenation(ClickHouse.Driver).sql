BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.PersonID,
	concat('123', p.FirstName, '456')
FROM
	Person p
WHERE
	p.PersonID = 1 AND concat('123', p.FirstName, '456') = '123John456'

