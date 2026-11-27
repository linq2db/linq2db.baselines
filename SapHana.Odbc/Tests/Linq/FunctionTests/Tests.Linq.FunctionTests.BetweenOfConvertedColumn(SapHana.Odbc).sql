-- SapHana.Odbc SapHanaOdbc
DECLARE @ConstantBounds NVarChar(5) -- String
SET     @ConstantBounds = '00005'
DECLARE @ConstantBounds NVarChar(5) -- String
SET     @ConstantBounds = '00050'
DECLARE @low NVarChar(5) -- String
SET     @low = '00005'
DECLARE @high NVarChar(5) -- String
SET     @high = '00050'
DECLARE @value NVarChar(5) -- String
SET     @value = '00042'
DECLARE @minimum BigInt -- Int64
SET     @minimum = 5
DECLARE @maximum BigInt -- Int64
SET     @maximum = 50
DECLARE @Padded NVarChar(5) -- String
SET     @Padded = '00100'
DECLARE @Padded NVarChar(5) -- String
SET     @Padded = '00200'

SELECT
	"r"."Id",
	CASE
		WHEN "r"."Padded" BETWEEN ? AND ? THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."Padded" NOT BETWEEN ? AND ? THEN 1
		ELSE 0
	END,
	CASE
		WHEN ? BETWEEN "r"."Low" AND "r"."High" THEN 1
		ELSE 0
	END,
	CASE
		WHEN "r"."Elapsed" BETWEEN ? AND ? THEN 1
		ELSE 0
	END
FROM
	"BetweenConvertedRow" "r"
WHERE
	"r"."Padded" NOT BETWEEN ? AND ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Padded",
	"t1"."Low",
	"t1"."High",
	"t1"."Elapsed"
FROM
	"BetweenConvertedRow" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @InRange NVarChar(5) -- String
SET     @InRange = '00001'
DECLARE @InRange NVarChar(5) -- String
SET     @InRange = '00010'
DECLARE @Padded NVarChar(5) -- String
SET     @Padded = '00100'
DECLARE @Padded NVarChar(5) -- String
SET     @Padded = '00200'

SELECT
	"g_2"."Key_1",
	CASE
		WHEN "g_2"."InRange" BETWEEN ? AND ? THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			"g_1"."Id" as "Key_1",
			MAX("g_1"."Padded") as "InRange"
		FROM
			"BetweenConvertedRow" "g_1"
		GROUP BY
			"g_1"."Id"
	) "g_2"
WHERE
	"g_2"."InRange" NOT BETWEEN ? AND ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Padded",
	"t1"."Low",
	"t1"."High",
	"t1"."Elapsed"
FROM
	"BetweenConvertedRow" "t1"

