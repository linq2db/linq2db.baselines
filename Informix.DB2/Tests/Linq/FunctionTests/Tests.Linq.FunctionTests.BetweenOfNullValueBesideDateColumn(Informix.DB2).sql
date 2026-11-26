-- Informix.DB2 Informix
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(16) -- DateTime
SET     @later = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@none BETWEEN r."Day" AND @later

-- Informix.DB2 Informix
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(16) -- DateTime
SET     @later = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@none NOT BETWEEN r."Day" AND @later

-- Informix.DB2 Informix
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(16) -- DateTime
SET     @later = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@none NOT BETWEEN r.Stamp AND @later

-- Informix.DB2 Informix
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(16) -- DateTime
SET     @later = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@none NOT BETWEEN r."Day" AND @later

-- Informix.DB2 Informix
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(16) -- DateTime
SET     @later = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@none NOT BETWEEN r.Stamp AND @later

-- Informix.DB2 Informix
DECLARE @value Timestamp(16) -- DateTime
SET     @value = TO_DATE('2020-01-02 12:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @none Timestamp -- DateTime
SET     @none = NULL

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@value NOT BETWEEN r."Day" AND @none

-- Informix.DB2 Informix
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @high Timestamp(16) -- DateTime
SET     @high = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@none NOT BETWEEN r."Day" AND @high

-- Informix.DB2 Informix
DECLARE @some Timestamp(16) -- DateTime
SET     @some = TO_DATE('2020-01-02 12:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @none Timestamp -- DateTime
SET     @none = NULL

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	@some NOT BETWEEN r."Day" AND @none

-- Informix.DB2 Informix
DECLARE @none Timestamp -- DateTime
SET     @none = NULL
DECLARE @later Timestamp(16) -- DateTime
SET     @later = TO_DATE('2020-01-03', '%Y-%m-%d')

SELECT
	CASE
		WHEN @none::datetime year to fraction(5) NOT BETWEEN r."Day" AND @later::datetime year to fraction(5)
			THEN 'a'
		ELSE 'b'
	END
FROM
	BetweenDayRow r
ORDER BY
	r.Id

