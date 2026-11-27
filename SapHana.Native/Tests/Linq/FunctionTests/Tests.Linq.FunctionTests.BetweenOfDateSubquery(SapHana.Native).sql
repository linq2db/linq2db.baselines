-- SapHana.Native SapHana
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000000'
DECLARE @low_1 Date
SET     @low_1 = TIMESTAMP '2020-01-01 00:30:00.0000000'
DECLARE @high_1 Date
SET     @high_1 = TIMESTAMP '2020-01-03 00:30:00.0000000'
DECLARE @low_2 Date
SET     @low_2 = TIMESTAMP '2020-01-01 00:30:00.0000000'
DECLARE @high_2 Date
SET     @high_2 = TIMESTAMP '2020-01-03 00:30:00.0000000'
DECLARE @low_3 Date
SET     @low_3 = TIMESTAMP '2020-01-01 00:30:00.0000000'
DECLARE @high_3 Date
SET     @high_3 = TIMESTAMP '2020-01-03 00:30:00.0000000'

SELECT
	CASE
		WHEN "t1"."maxDay" BETWEEN :"low" AND :"high" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" >= :"low_1" AND "t1"."maxDay" <= :"high_1"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" NOT BETWEEN :"low_2" AND :"high_2" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" < :"low_3" OR "t1"."maxDay" > :"high_3"
			THEN 1
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

