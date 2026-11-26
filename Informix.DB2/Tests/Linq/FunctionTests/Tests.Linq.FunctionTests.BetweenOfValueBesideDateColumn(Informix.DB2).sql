-- Informix.DB2 Informix
DECLARE @value Timestamp(16) -- DateTime
SET     @value = TO_DATE('2020-01-02 12:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @high Timestamp(16) -- DateTime
SET     @high = TO_DATE('2020-01-02 06:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @value_1 Date(16)
SET     @value_1 = TO_DATE('2020-01-02 12:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @later Timestamp(16) -- DateTime
SET     @later = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	@value::datetime year to fraction(5) BETWEEN r."Day" AND @high::datetime year to fraction(5),
	'f'::BOOLEAN,
	@value::datetime year to fraction(5) NOT BETWEEN r."Day" AND @high::datetime year to fraction(5),
	't'::BOOLEAN,
	@value::datetime year to fraction(5) BETWEEN r."Day" AND r.Stamp,
	@value_1::DATETIME YEAR TO DAY >= r."Day" AND @value::datetime year to fraction(5) <= r.Stamp,
	CASE
		WHEN @value::datetime year to fraction(5) NOT BETWEEN Nvl(d."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) AND @later::datetime year to fraction(5)
			THEN 'a'
		ELSE 'b'
	END
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
ORDER BY
	r.Id

-- Informix.DB2 Informix
DECLARE @value Timestamp(16) -- DateTime
SET     @value = TO_DATE('2020-01-02 12:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @later Timestamp(16) -- DateTime
SET     @later = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	r.Id
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
WHERE
	@value NOT BETWEEN d."Day" AND @later

-- Informix.DB2 Informix
DECLARE @value Timestamp(16) -- DateTime
SET     @value = TO_DATE('2020-01-02 12:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @high Timestamp(16) -- DateTime
SET     @high = TO_DATE('2020-01-02 06:00:00', '%Y-%m-%d %H:%M:%S')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@value BETWEEN r."Day" AND @high OR @value >= Extend(r.Stamp, Year to Day)
ORDER BY
	r.Id

