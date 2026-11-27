-- Firebird.4 Firebird4
DECLARE @ConstantBounds VarChar(5) -- String
SET     @ConstantBounds = '00005'
DECLARE @ConstantBounds_1 VarChar(5) -- String
SET     @ConstantBounds_1 = '00050'
DECLARE @low VarChar(5) -- String
SET     @low = '00005'
DECLARE @high VarChar(5) -- String
SET     @high = '00050'
DECLARE @value VarChar(5) -- String
SET     @value = '00042'
DECLARE @minimum BigInt -- Int64
SET     @minimum = 5
DECLARE @maximum BigInt -- Int64
SET     @maximum = 50
DECLARE @Padded VarChar(5) -- String
SET     @Padded = '00100'
DECLARE @Padded_1 VarChar(5) -- String
SET     @Padded_1 = '00200'

SELECT
	"r"."Id",
	"r"."Padded" BETWEEN CAST(@ConstantBounds AS VARCHAR(5)) AND CAST(@ConstantBounds_1 AS VARCHAR(5)),
	"r"."Padded" NOT BETWEEN CAST(@low AS VARCHAR(5)) AND CAST(@high AS VARCHAR(5)),
	CAST(@value AS VARCHAR(5)) BETWEEN "r"."Low" AND "r"."High",
	"r"."Elapsed" BETWEEN CAST(@minimum AS BigInt) AND CAST(@maximum AS BigInt)
FROM
	"BetweenConvertedRow" "r"
WHERE
	"r"."Padded" NOT BETWEEN @Padded AND @Padded_1

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Padded",
	"t1"."Low",
	"t1"."High",
	"t1"."Elapsed"
FROM
	"BetweenConvertedRow" "t1"

-- Firebird.4 Firebird4
DECLARE @InRange VarChar(5) -- String
SET     @InRange = '00001'
DECLARE @InRange_1 VarChar(5) -- String
SET     @InRange_1 = '00010'
DECLARE @Padded VarChar(5) -- String
SET     @Padded = '00100'
DECLARE @Padded_1 VarChar(5) -- String
SET     @Padded_1 = '00200'

SELECT
	"g_2"."Key_1",
	"g_2"."InRange" BETWEEN CAST(@InRange AS VARCHAR(5)) AND CAST(@InRange_1 AS VARCHAR(5))
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
	"g_2"."InRange" NOT BETWEEN @Padded AND @Padded_1

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Padded",
	"t1"."Low",
	"t1"."High",
	"t1"."Elapsed"
FROM
	"BetweenConvertedRow" "t1"

