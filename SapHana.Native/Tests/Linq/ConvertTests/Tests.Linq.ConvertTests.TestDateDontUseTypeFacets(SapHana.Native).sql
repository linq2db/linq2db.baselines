-- SapHana.Native SapHana
SELECT
	"g_2"."Date_1",
	COUNT(*)
FROM
	(
		SELECT
			To_Date("g_1"."CreatedOnUtc") as "Date_1"
		FROM
			"DateTimePrecisionTable" "g_1"
	) "g_2"
GROUP BY
	"g_2"."Date_1"

-- SapHana.Native SapHana
SELECT
	"t1"."CreatedOnUtc"
FROM
	"DateTimePrecisionTable" "t1"

