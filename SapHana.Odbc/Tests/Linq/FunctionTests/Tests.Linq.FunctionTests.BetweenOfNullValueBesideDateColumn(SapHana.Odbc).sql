-- SapHana.Odbc SapHanaOdbc
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(? AS Timestamp) BETWEEN "r"."Day" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(? AS Timestamp) NOT BETWEEN "r"."Day" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	? NOT BETWEEN "r"."Stamp" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(? AS Timestamp) NOT BETWEEN "r"."Day" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	? NOT BETWEEN "r"."Stamp" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @none DateTime
SET     @none = NULL

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(? AS Timestamp) NOT BETWEEN "r"."Day" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @none DateTime
SET     @none = NULL
DECLARE @high DateTime
SET     @high = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(? AS Timestamp) NOT BETWEEN "r"."Day" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @some DateTime
SET     @some = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @none DateTime
SET     @none = NULL

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(? AS Timestamp) NOT BETWEEN "r"."Day" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	CASE
		WHEN CAST(? AS Timestamp) NOT BETWEEN "r"."Day" AND ? THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" "r"
ORDER BY
	"r"."Id"

