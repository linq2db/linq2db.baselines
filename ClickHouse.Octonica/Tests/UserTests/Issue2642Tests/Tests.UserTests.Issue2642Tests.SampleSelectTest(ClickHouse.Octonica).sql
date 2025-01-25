BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS mails

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS mails
(
	Id      Int32,
	AddTime DateTime64(7)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EmailAttachments

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EmailAttachments
(
	Id      Int32,
	EmailId Int32,
	Data    Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IIRs

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS IIRs
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id,
	d.Id,
	d.EmailId,
	d.Data
FROM
	(
		SELECT DISTINCT
			p.Id as Id
		FROM
			mails p
				INNER JOIN IIRs i ON p.Id = i.Id
		WHERE
			p.AddTime > toDateTime64('2020-02-29 17:54:55.1231234', 7)
	) m_1
		INNER JOIN EmailAttachments d ON m_1.Id = d.EmailId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS IIRs

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EmailAttachments

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS mails

