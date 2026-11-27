-- SapHana.Odbc SapHanaOdbc
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @high DateTime
SET     @high = TIMESTAMP '2020-01-02 06:00:00.0000000'
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @high DateTime
SET     @high = TIMESTAMP '2020-01-02 06:00:00.0000000'
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @value Date
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @later DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	CASE
		WHEN CAST(? AS Timestamp) BETWEEN "r"."Day" AND ? THEN 1
		ELSE 0
	END,
	0,
	CASE
		WHEN CAST(? AS Timestamp) NOT BETWEEN "r"."Day" AND ? THEN 1
		ELSE 0
	END,
	1,
	CASE
		WHEN CAST(? AS Timestamp) BETWEEN "r"."Day" AND "r"."Stamp"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN ? >= "r"."Day" AND ? <= "r"."Stamp" THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(? AS Timestamp) NOT BETWEEN Coalesce("d"."Day", TIMESTAMP '0001-01-01 00:00:00.0000000') AND ?
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @later DateTime
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
WHERE
	CAST(? AS Timestamp) NOT BETWEEN "d"."Day" AND ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @high DateTime
SET     @high = TIMESTAMP '2020-01-02 06:00:00.0000000'
DECLARE @value DateTime
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(? AS Timestamp) BETWEEN "r"."Day" AND ? OR ? >= To_Date("r"."Stamp")
ORDER BY
	"r"."Id"

