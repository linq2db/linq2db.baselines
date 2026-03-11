-- ClickHouse.MySql ClickHouse

SELECT
	q.Id,
	q.Name,
	q.ContactEmail,
	Coalesce(q.Enabled, false)
FROM
	CustomerBase q
WHERE
	q.ClientType = 'Client' AND (position(q.Name, 'test') > 0 OR position(q.ContactEmail, 'test') > 0)

