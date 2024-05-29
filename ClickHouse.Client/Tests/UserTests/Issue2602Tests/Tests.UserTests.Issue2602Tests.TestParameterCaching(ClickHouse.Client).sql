BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Emails

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Emails
(
	Id Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EmailAttachment

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS EmailAttachment
(
	Id       Int32,
	EmailId  Int32,
	FileName String,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	c_1.Id
FROM
	Emails c_1
WHERE
	c_1.Id = 35
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	c_1.Id
FROM
	Emails c_1
WHERE
	c_1.Id = 36
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EmailAttachment

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Emails

