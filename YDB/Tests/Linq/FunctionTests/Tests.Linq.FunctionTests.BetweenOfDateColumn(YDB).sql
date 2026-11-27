-- YDB Ydb
DECLARE low Date
SET     low = Timestamp('2020-01-01T00:30:00.000000Z')
DECLARE high Date
SET     high = Timestamp('2020-01-03T00:30:00.000000Z')
DECLARE low_1 Timestamp -- DateTime2
SET     low_1 = Timestamp('2020-01-01T00:30:00.000000Z')
DECLARE high_1 Timestamp -- DateTime2
SET     high_1 = Timestamp('2020-01-03T00:30:00.000000Z')

SELECT
	r.`Day` BETWEEN Date('2020-01-01') AND Date('2020-01-03') as c1,
	r.`Day` >= Date('2020-01-01') AND r.`Day` <= Date('2020-01-03') as c2,
	Coalesce(r.Other, r.`Day`) BETWEEN Timestamp('2020-01-01T00:30:00.000000Z') AND Timestamp('2020-01-03T00:30:00.000000Z') as c3,
	Coalesce(r.Other, r.`Day`) >= Timestamp('2020-01-01T00:30:00.000000Z') AND Coalesce(r.Other, r.`Day`) <= Timestamp('2020-01-03T00:30:00.000000Z') as c4,
	r.`Day` BETWEEN $low AND $high as c5,
	r.`Day` >= $low AND r.`Day` <= $high as c6,
	Coalesce(d.`Day`, Date('1970-01-01')) BETWEEN Date('2020-01-01') AND Date('2020-01-03') as c7,
	Coalesce(d.`Day`, Date('1970-01-01')) >= Date('2020-01-01') AND Coalesce(d.`Day`, Date('1970-01-01')) <= Date('2020-01-03') as c8,
	r.`Day` NOT BETWEEN $low AND $high as c9,
	r.`Day` < $low OR r.`Day` > $high as c10,
	r.`Day` NOT BETWEEN Date('2020-01-01') AND Date('2020-01-03') as c11,
	r.`Day` < Date('2020-01-01') OR r.`Day` > Date('2020-01-03') as c12,
	Coalesce(d.`Day`, Date('1970-01-01')) NOT BETWEEN Date('2020-01-01') AND Date('2020-01-03') as c13,
	Coalesce(d.`Day`, Date('1970-01-01')) < Date('2020-01-01') OR Coalesce(d.`Day`, Date('1970-01-01')) > Date('2020-01-03') as c14,
	r.Stamp BETWEEN $low_1 AND $high_1 as c15,
	r.Stamp >= $low_1 AND r.Stamp <= $high_1 as c16
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1

-- YDB Ydb
DECLARE low Date
SET     low = Timestamp('2020-01-01T00:30:00.000000Z')
DECLARE high Date
SET     high = Timestamp('2020-01-03T00:30:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	r.`Day` BETWEEN $low AND $high
ORDER BY
	r.Id

-- YDB Ydb
DECLARE low Date
SET     low = Timestamp('2020-01-01T00:30:00.000000Z')
DECLARE high Date
SET     high = Timestamp('2020-01-03T00:30:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	r.`Day` >= $low AND r.`Day` <= $high
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	r.`Day` NOT BETWEEN Date('2020-01-01') AND Date('2020-01-03')
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	r.`Day` < Date('2020-01-01') OR r.`Day` > Date('2020-01-03')
ORDER BY
	r.Id

