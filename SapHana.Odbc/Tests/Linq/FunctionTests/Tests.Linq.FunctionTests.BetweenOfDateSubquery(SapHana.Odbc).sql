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
		WHEN "t1"."maxDay" BETWEEN ? AND ? THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" >= ? AND "t1"."maxDay" <= ? THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" NOT BETWEEN ? AND ? THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" < ? OR "t1"."maxDay" > ? THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			(
				SELECT
					MAX("x"."Day")
				FROM
					"BetweenDayRow" "x"
				WHERE
					"x"."Id" = "r"."Id"
			) as "maxDay"
		FROM
			"BetweenDayRow" "r"
	) "t1"

