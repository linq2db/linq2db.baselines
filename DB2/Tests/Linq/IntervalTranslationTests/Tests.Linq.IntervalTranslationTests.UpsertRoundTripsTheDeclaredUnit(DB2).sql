-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 4567

MERGE INTO "DurationRow" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"InSeconds" = CAST(@InSeconds AS BigInt),
		"InTicks" = CAST(@InTicks AS BigInt),
		"Undeclared" = CAST(@Undeclared AS BigInt),
		"UndeclaredSeconds" = CAST(@UndeclaredSeconds AS BigInt)
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
		CAST(@Id AS Int),
		CAST(@InSeconds AS BigInt),
		CAST(@InTicks AS BigInt),
		CAST(@Undeclared AS BigInt),
		CAST(@UndeclaredSeconds AS BigInt)
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 19260
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 192600000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 19260

MERGE INTO "DurationRow" "t1"
USING (SELECT CAST(@Id AS Int) AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"InSeconds" = CAST(@InSeconds AS BigInt),
		"InTicks" = CAST(@InTicks AS BigInt),
		"Undeclared" = CAST(@Undeclared AS BigInt),
		"UndeclaredSeconds" = CAST(@UndeclaredSeconds AS BigInt)
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
		CAST(@Id AS Int),
		CAST(@InSeconds AS BigInt),
		CAST(@InTicks AS BigInt),
		CAST(@Undeclared AS BigInt),
		CAST(@UndeclaredSeconds AS BigInt)
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

