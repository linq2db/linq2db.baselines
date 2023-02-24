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
	lw_Email.Id,
	detail.Id,
	detail.EmailId,
	detail.FileName
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			(
				SELECT
					c_1.Id as Id
				FROM
					Emails c_1
				WHERE
					c_1.Id = toInt32(35)
				LIMIT toInt32(1)
			) t1
	) lw_Email
		INNER JOIN EmailAttachment detail ON lw_Email.Id = detail.EmailId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c_1.Id
FROM
	Emails c_1
WHERE
	c_1.Id = toInt32(35)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	lw_Email.Id,
	detail.Id,
	detail.EmailId,
	detail.FileName
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			(
				SELECT
					c_1.Id as Id
				FROM
					Emails c_1
				WHERE
					c_1.Id = toInt32(36)
				LIMIT toInt32(1)
			) t1
	) lw_Email
		INNER JOIN EmailAttachment detail ON lw_Email.Id = detail.EmailId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c_1.Id
FROM
	Emails c_1
WHERE
	c_1.Id = toInt32(36)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EmailAttachment

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Emails

