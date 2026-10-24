-- Firebird.5 Firebird4
DECLARE @value BigInt -- Int64
SET     @value = 4567
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 45670000000
DECLARE @value_2 BigInt -- Int64
SET     @value_2 = 45670000000
DECLARE @value_3 BigInt -- Int64
SET     @value_3 = 4567

MERGE INTO "DurationRow" "t1"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
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

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @value BigInt -- Int64
SET     @value = 19260
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 192600000000
DECLARE @value_2 BigInt -- Int64
SET     @value_2 = 192600000000
DECLARE @value_3 BigInt -- Int64
SET     @value_3 = 19260

MERGE INTO "DurationRow" "t1"
USING (SELECT 1 AS "Id" FROM rdb$database) "s" ON
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

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

