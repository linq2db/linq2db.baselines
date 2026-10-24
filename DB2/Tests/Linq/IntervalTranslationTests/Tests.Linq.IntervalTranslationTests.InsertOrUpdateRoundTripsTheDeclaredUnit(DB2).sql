-- DB2 DB2.LUW DB2LUW
DECLARE @value BigInt(8) -- Int64
SET     @value = 4567
DECLARE @value_1 BigInt(8) -- Int64
SET     @value_1 = 45670000000
DECLARE @value_2 BigInt(8) -- Int64
SET     @value_2 = 45670000000
DECLARE @value_3 BigInt(8) -- Int64
SET     @value_3 = 4567

MERGE INTO "DurationRow" "t1"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"InSeconds" = CAST(@value AS BigInt),
		"InTicks" = CAST(@value_1 AS BigInt)
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"InSeconds",
		"InTicks",
		"Undeclared",
		"UndeclaredSeconds"
	)
	VALUES
	(
		1,
		CAST(@value AS BigInt),
		CAST(@value_1 AS BigInt),
		CAST(@value_2 AS BigInt),
		CAST(@value_3 AS BigInt)
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @value BigInt(8) -- Int64
SET     @value = 19260
DECLARE @value_1 BigInt(8) -- Int64
SET     @value_1 = 192600000000
DECLARE @value_2 BigInt(8) -- Int64
SET     @value_2 = 192600000000
DECLARE @value_3 BigInt(8) -- Int64
SET     @value_3 = 19260

MERGE INTO "DurationRow" "t1"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"InSeconds" = CAST(@value AS BigInt),
		"InTicks" = CAST(@value_1 AS BigInt)
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"InSeconds",
		"InTicks",
		"Undeclared",
		"UndeclaredSeconds"
	)
	VALUES
	(
		1,
		CAST(@value AS BigInt),
		CAST(@value_1 AS BigInt),
		CAST(@value_2 AS BigInt),
		CAST(@value_3 AS BigInt)
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

