BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS mails

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS mails
(
	Id      Int32,
	AddTime DateTime64(7)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EmailAttachments

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS EmailAttachments
(
	Id      Int32,
	EmailId Int32,
	Data    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS IIRs

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS IIRs
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	key_data_result.Id,
	key_data_result.AddTime,
	detail.Id,
	detail.EmailId,
	detail.Data
FROM
	(
		SELECT DISTINCT
			p.Id as Id,
			p.AddTime as AddTime
		FROM
			mails p
				INNER JOIN IIRs i ON p.Id = i.Id
		WHERE
			p.AddTime > toDateTime64('2020-02-29 17:54:55.1231234', 7)
	) key_data_result
		INNER JOIN EmailAttachments detail ON key_data_result.Id = detail.EmailId

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	p.AddTime
FROM
	mails p
		INNER JOIN IIRs i ON p.Id = i.Id
WHERE
	p.AddTime > toDateTime64('2020-02-29 17:54:55.1231234', 7)
ORDER BY
	p.AddTime

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS IIRs

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS EmailAttachments

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS mails

