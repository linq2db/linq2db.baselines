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
	minOrNull(t1.TranslatedMessage1),
	t1.Key_2,
	t1.Key_3,
	Count(*),
	sumOrNull((toUnixTimestamp64Milli(toDateTime64(t1.TimestampGone, 3)) - toUnixTimestamp64Milli(toDateTime64(t1.TimestampGenerated, 3))) * 10000 / 10000)
FROM
	(
		SELECT
			m_1.ExternID1 as Key_1,
			m_1.TranslatedMessageGroup as Key_2,
			HOUR(m_1.TimestampGenerated) as Key_3,
			m_1.TranslatedMessage1 as TranslatedMessage1,
			m_1.TimestampGenerated as TimestampGenerated,
			m_1.TimestampGone as TimestampGone
		FROM
			Issue2564Table m_1
		WHERE
			m_1.TimestampGone IS NOT NULL AND
			m_1.TimestampGenerated >= toDateTime64('2020-02-28 17:54:55.1231234', 7) AND
			m_1.TimestampGenerated <= toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
			m_1.MessageClassName = 'Error'
	) t1
GROUP BY
	t1.Key_1,
	t1.Key_2,
	t1.Key_3

