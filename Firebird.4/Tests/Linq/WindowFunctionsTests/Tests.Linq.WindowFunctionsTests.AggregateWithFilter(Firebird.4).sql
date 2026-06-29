-- Firebird.4 Firebird4

SELECT
	SUM(CASE
		WHEN "t"."CategoryId" = 1 THEN "t"."IntValue"
		ELSE NULL
	END) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id"),
	SUM(CASE
		WHEN "t"."IntValue" > 20 THEN "t"."IntValue"
		ELSE NULL
	END) OVER (ORDER BY "t"."Id" ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	SUM(CASE
		WHEN "t"."IntValue" > 10 THEN "t"."IntValue"
		ELSE NULL
	END) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id" ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING),
	AVG(CASE
		WHEN "t"."DoubleValue" > 15 THEN "t"."DoubleValue"
		ELSE NULL
	END) OVER (ORDER BY "t"."Id" RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	MIN(CASE
		WHEN "t"."IntValue" > 10 THEN "t"."IntValue"
		ELSE NULL
	END) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id"),
	MAX(CASE
		WHEN "t"."IntValue" < 80 THEN "t"."IntValue"
		ELSE NULL
	END) OVER (ORDER BY "t"."Id" ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW),
	COUNT(CASE
		WHEN "t"."IntValue" > 20 THEN 1
		ELSE NULL
	END) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

