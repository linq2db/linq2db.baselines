-- YDB Ydb
DECLARE value Timestamp -- DateTime2
SET     value = Timestamp('2020-01-02T12:00:00.000000Z')
DECLARE high Timestamp -- DateTime2
SET     high = Timestamp('2020-01-02T06:00:00.000000Z')
DECLARE value_1 Date
SET     value_1 = Timestamp('2020-01-02T12:00:00.000000Z')
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	$value BETWEEN r.`Day` AND $high as c1,
	false as c2,
	$value NOT BETWEEN r.`Day` AND $high as c3,
	true as c4,
	$value BETWEEN r.`Day` AND r.Stamp as c5,
	$value_1 >= r.`Day` AND $value <= r.Stamp as c6,
	CASE
		WHEN $value NOT BETWEEN Coalesce(d.`Day`, Date('1970-01-01')) AND $later
			THEN 'a'u
		ELSE 'b'u
	END as Optional
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
ORDER BY
	r.Id

-- YDB Ydb
DECLARE value Timestamp -- DateTime2
SET     value = Timestamp('2020-01-02T12:00:00.000000Z')
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
WHERE
	$value NOT BETWEEN d.`Day` AND $later

-- YDB Ydb
DECLARE value Timestamp -- DateTime2
SET     value = Timestamp('2020-01-02T12:00:00.000000Z')
DECLARE high Timestamp -- DateTime2
SET     high = Timestamp('2020-01-02T06:00:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$value BETWEEN r.`Day` AND $high OR $value >= DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(r.Stamp)))
ORDER BY
	r.Id

