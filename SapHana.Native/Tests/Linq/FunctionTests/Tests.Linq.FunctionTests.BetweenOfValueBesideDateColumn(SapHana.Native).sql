-- SapHana.Native SapHana
DECLARE @value TimeStamp -- DateTime2
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @high TimeStamp -- DateTime2
SET     @high = TIMESTAMP '2020-01-02 06:00:00.0000000'
DECLARE @value_1 TimeStamp -- DateTime2
SET     @value_1 = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @high_1 TimeStamp -- DateTime2
SET     @high_1 = TIMESTAMP '2020-01-02 06:00:00.0000000'
DECLARE @value_2 TimeStamp -- DateTime2
SET     @value_2 = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @value_3 Date
SET     @value_3 = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @value_4 TimeStamp -- DateTime2
SET     @value_4 = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @value_5 TimeStamp -- DateTime2
SET     @value_5 = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @later TimeStamp -- DateTime2
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	CASE
		WHEN CAST(:"value" AS Timestamp) BETWEEN "r"."Day" AND :"high"
			THEN 1
		ELSE 0
	END,
	0,
	CASE
		WHEN CAST(:"value_1" AS Timestamp) NOT BETWEEN "r"."Day" AND :"high_1"
			THEN 1
		ELSE 0
	END,
	1,
	CASE
		WHEN CAST(:"value_2" AS Timestamp) BETWEEN "r"."Day" AND "r"."Stamp"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN :"value_3" >= "r"."Day" AND :"value_4" <= "r"."Stamp"
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN CAST(:"value_5" AS Timestamp) NOT BETWEEN Coalesce("d"."Day", TIMESTAMP '0001-01-01 00:00:00.0000000') AND :"later"
			THEN 'a'
		ELSE 'b'
	END
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
DECLARE @value TimeStamp -- DateTime2
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @later TimeStamp -- DateTime2
SET     @later = TIMESTAMP '2020-01-03 00:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
		LEFT JOIN "BetweenDayRow" "d" ON "d"."Id" = "r"."Id" - 1
WHERE
	CAST(:"value" AS Timestamp) NOT BETWEEN "d"."Day" AND :"later"

-- SapHana.Native SapHana
DECLARE @value TimeStamp -- DateTime2
SET     @value = TIMESTAMP '2020-01-02 12:00:00.0000000'
DECLARE @high TimeStamp -- DateTime2
SET     @high = TIMESTAMP '2020-01-02 06:00:00.0000000'
DECLARE @value_1 TimeStamp -- DateTime2
SET     @value_1 = TIMESTAMP '2020-01-02 12:00:00.0000000'

SELECT
	"r"."Id"
FROM
	"BetweenDayRow" "r"
WHERE
	CAST(:"value" AS Timestamp) BETWEEN "r"."Day" AND :"high" OR
	:"value_1" >= To_Date("r"."Stamp")
ORDER BY
	"r"."Id"

