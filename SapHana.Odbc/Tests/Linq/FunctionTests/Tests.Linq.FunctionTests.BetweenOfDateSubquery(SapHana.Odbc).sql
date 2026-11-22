-- SapHana.Odbc SapHanaOdbc
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000000'
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000000'
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000000'
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000000'

SELECT
	CASE
		WHEN "t1"."InRange" BETWEEN ? AND ? THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."InRange" >= ? AND "t1"."InRange" <= ? THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."InRange" NOT BETWEEN ? AND ? THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."InRange" < ? OR "t1"."InRange" > ? THEN 1
		ELSE 0
	END
FROM
	"BetweenDayRow" "r"
		LEFT JOIN LATERAL (
			SELECT
				MAX("x"."Day") as "InRange"
			FROM
				"BetweenDayRow" "x"
			WHERE
				"x"."Id" = "r"."Id"
		) "t1" ON 1=1

