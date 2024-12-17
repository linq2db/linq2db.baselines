BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue2564Table

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	Trim(minOrNull(tgGroup_1.TranslatedMessage1)),
	tgGroup_1.TranslatedMessageGroup,
	tgGroup_1.Hour_1,
	COUNT(*),
	sumOrNull(toUnixTimestamp64Milli(toDateTime64(tgGroup_1.cond, 3)) - toUnixTimestamp64Milli(toDateTime64(tgGroup_1.TimestampGenerated, 3)))
FROM
	(
		SELECT
			tgGroup.ExternID1 as ExternID1,
			tgGroup.TranslatedMessageGroup as TranslatedMessageGroup,
			toHour(tgGroup.TimestampGenerated) as Hour_1,
			tgGroup.TranslatedMessage1 as TranslatedMessage1,
			tgGroup.TimestampGenerated as TimestampGenerated,
			tgGroup.TimestampGone as cond
		FROM
			Issue2564Table tgGroup
		WHERE
			tgGroup.TimestampGone IS NOT NULL AND
			tgGroup.TimestampGenerated >= toDateTime64('2020-02-28 17:54:55.1231234', 7) AND
			tgGroup.TimestampGenerated <= toDateTime64('2020-02-29 17:54:55.1231234', 7) AND
			tgGroup.MessageClassName = 'Error'
	) tgGroup_1
GROUP BY
	tgGroup_1.ExternID1,
	tgGroup_1.TranslatedMessageGroup,
	tgGroup_1.Hour_1

