-- YDB Ydb
DECLARE low Interval -- Object
SET     low = Interval('PT1H30M')
DECLARE high Interval -- Object
SET     high = Interval('PT3H')

SELECT
	r.Id as Id
FROM
	BetweenTimeRow r
WHERE
	r.`Value` BETWEEN $low AND $high
ORDER BY
	r.Id

-- YDB Ydb
DECLARE low Interval -- Object
SET     low = Interval('PT1H30M')
DECLARE high Interval -- Object
SET     high = Interval('PT3H')

SELECT
	r.Id as Id
FROM
	BetweenTimeRow r
WHERE
	r.`Value` NOT BETWEEN $low AND $high
ORDER BY
	r.Id

