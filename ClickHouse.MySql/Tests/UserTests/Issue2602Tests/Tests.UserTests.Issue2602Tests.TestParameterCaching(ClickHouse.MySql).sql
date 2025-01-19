BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.EmailId,
	d.FileName
FROM
	(
		SELECT
			c_1.Id as Id
		FROM
			Emails c_1
		WHERE
			c_1.Id = 35
		LIMIT 1
	) m_1
		INNER JOIN EmailAttachment d ON m_1.Id = d.EmailId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.Id
FROM
	Emails c_1
WHERE
	c_1.Id = 35
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.EmailId,
	d.FileName
FROM
	(
		SELECT
			c_1.Id as Id
		FROM
			Emails c_1
		WHERE
			c_1.Id = 36
		LIMIT 1
	) m_1
		INNER JOIN EmailAttachment d ON m_1.Id = d.EmailId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_1.Id
FROM
	Emails c_1
WHERE
	c_1.Id = 36
LIMIT 1

