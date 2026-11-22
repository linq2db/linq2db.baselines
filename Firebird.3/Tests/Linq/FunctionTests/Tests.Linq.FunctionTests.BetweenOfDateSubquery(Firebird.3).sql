-- Firebird.3 Firebird3
DECLARE @low Date
SET     @low = TIMESTAMP '2020-01-01 00:30:00.0000'
DECLARE @high Date
SET     @high = TIMESTAMP '2020-01-03 00:30:00.0000'

SELECT
	CASE
		WHEN "t1"."InRange" BETWEEN CAST(@low AS Date) AND CAST(@high AS Date)
			THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "t1"."InRange" >= CAST(@low AS Date) AND "t1"."InRange" <= CAST(@high AS Date)
			THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "t1"."InRange" NOT BETWEEN CAST(@low AS Date) AND CAST(@high AS Date)
			THEN TRUE
		ELSE FALSE
	END,
	CASE
		WHEN "t1"."InRange" < CAST(@low AS Date) OR "t1"."InRange" > CAST(@high AS Date)
			THEN TRUE
		ELSE FALSE
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
			) as "InRange"
		FROM
			"BetweenDayRow" "r"
	) "t1"

