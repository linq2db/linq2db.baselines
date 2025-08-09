BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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

