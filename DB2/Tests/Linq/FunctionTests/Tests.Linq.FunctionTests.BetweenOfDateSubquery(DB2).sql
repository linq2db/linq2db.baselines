-- DB2 DB2.LUW DB2LUW
DECLARE @low Date(20)
SET     @low = CAST('2020-01-01-00.30.00.000000' AS TIMESTAMP(6))
DECLARE @high Date(20)
SET     @high = CAST('2020-01-03-00.30.00.000000' AS TIMESTAMP(6))

SELECT
	CASE
		WHEN "t1"."maxDay" BETWEEN CAST(@low AS Date) AND CAST(@high AS Date)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" >= CAST(@low AS Date) AND "t1"."maxDay" <= CAST(@high AS Date)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" NOT BETWEEN CAST(@low AS Date) AND CAST(@high AS Date)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "t1"."maxDay" < CAST(@low AS Date) OR "t1"."maxDay" > CAST(@high AS Date)
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

