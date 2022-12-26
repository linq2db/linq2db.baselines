BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue2564Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE Issue2564Table
(
	Id                     Int64,
	TimestampGenerated     DateTime64(7),
	TimestampGone          Nullable(DateTime64(7)),
	MessageClassName       Nullable(String),
	ExternID1              Nullable(String),
	TranslatedMessageGroup Nullable(String),
	TranslatedMessage1     Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	minOrNull(m_1.TranslatedMessage1),
	m_1.TranslatedMessageGroup,
	HOUR(m_1.TimestampGenerated),
	Count(*),
	sumOrNull(toUnixTimestamp64Milli(toDateTime64(m_1.TimestampGone, 3)) - toUnixTimestamp64Milli(toDateTime64(m_1.TimestampGenerated, 3)))
FROM
	Issue2564Table m_1
WHERE
	m_1.TimestampGone IS NOT NULL AND
	m_1.TimestampGenerated >= toDateTime64('2020-02-28 17:54:55.1231234', 7) AND
	m_1.TimestampGenerated <= toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
	m_1.MessageClassName = 'Error'
GROUP BY
	m_1.ExternID1,
	m_1.TranslatedMessageGroup,
	HOUR(m_1.TimestampGenerated)

