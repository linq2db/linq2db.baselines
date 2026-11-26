-- SapHana.Native SapHana
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime2
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(:"none" AS Timestamp) BETWEEN "r"."Day" AND :"later"

-- SapHana.Native SapHana
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime2
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(:"none" AS Timestamp) NOT BETWEEN "r"."Day" AND :"later"

-- SapHana.Native SapHana
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime2
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	:"none" NOT BETWEEN "r"."Stamp" AND :"later"

-- SapHana.Native SapHana
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime2
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(:"none" AS Timestamp) NOT BETWEEN "r"."Day" AND :"later"

-- SapHana.Native SapHana
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime2
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	:"none" NOT BETWEEN "r"."Stamp" AND :"later"

-- SapHana.Native SapHana
DECLARE @value TimeStamp -- DateTime2
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(:"value" AS Timestamp) NOT BETWEEN "r"."Day" AND :"none"

-- SapHana.Native SapHana
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL
DECLARE @high TimeStamp -- DateTime2
SET     @high = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(:"none" AS Timestamp) NOT BETWEEN "r"."Day" AND :"high"

-- SapHana.Native SapHana
DECLARE @some TimeStamp -- DateTime2
SET     @some = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(:"some" AS Timestamp) NOT BETWEEN "r"."Day" AND :"none"

-- SapHana.Native SapHana
DECLARE @none TimeStamp -- DateTime2
SET     @none = NULL
DECLARE @later TimeStamp -- DateTime2
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	CASE
		WHEN CAST(:"none" AS Timestamp) NOT BETWEEN "r"."Day" AND :"later"
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" "r"
ORDER BY
	"r"."Id"

