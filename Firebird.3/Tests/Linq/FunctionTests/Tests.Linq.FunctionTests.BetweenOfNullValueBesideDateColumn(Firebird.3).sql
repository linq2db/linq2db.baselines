-- Firebird.3 Firebird3
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	@none BETWEEN "r"."Day" AND @later

-- Firebird.3 Firebird3
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(@none AS TimeStamp) NOT BETWEEN "r"."Day" AND @later

-- Firebird.3 Firebird3
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(@none AS TimeStamp) NOT BETWEEN "r"."Stamp" AND @later

-- Firebird.3 Firebird3
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(@none AS TimeStamp) NOT BETWEEN "r"."Day" AND @later

-- Firebird.3 Firebird3
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(@none AS TimeStamp) NOT BETWEEN "r"."Stamp" AND @later

-- Firebird.3 Firebird3
DECLARE @value TimeStamp -- DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000'
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(@value AS TimeStamp) NOT BETWEEN "r"."Day" AND @none

-- Firebird.3 Firebird3
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @high TimeStamp -- DateTime
SET     @high = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(@none AS TimeStamp) NOT BETWEEN "r"."Day" AND @high

-- Firebird.3 Firebird3
DECLARE @some TimeStamp -- DateTime
SET     @some = TIMESTAMP '2020-01-02 12:00:00.0000'
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(@some AS TimeStamp) NOT BETWEEN "r"."Day" AND @none

-- Firebird.3 Firebird3
DECLARE @none TimeStamp -- DateTime
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000'

SELECT
	CASE
		WHEN CAST(@none AS TimeStamp) NOT BETWEEN "r"."Day" AND CAST(@later AS TimeStamp)
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" "r"
ORDER BY
	"r"."Id"

