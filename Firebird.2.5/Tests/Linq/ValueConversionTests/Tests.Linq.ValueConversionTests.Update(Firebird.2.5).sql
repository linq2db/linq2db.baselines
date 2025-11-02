-- Firebird.2.5 Firebird
DECLARE @Value2 VarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- String
SET     @EnumWithNullDeclarative = NULL

UPDATE
	"ValueConversion" "e"
SET
	"Value1" = "e"."Value1",
	"Value2" = CAST(@Value2 AS VARCHAR(21)),
	"EnumWithNull" = CAST(@EnumWithNull AS VarChar(50) CHARACTER SET UNICODE_FSS),
	"EnumWithNullDeclarative" = CAST(@EnumWithNullDeclarative AS VarChar(50) CHARACTER SET UNICODE_FSS)
WHERE
	"e"."Id" = 1

-- Firebird.2.5 Firebird

SELECT FIRST 1
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue",
	"e"."AnotherBoolValue",
	"e"."DateTimeNullable"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 1

-- Firebird.2.5 Firebird
DECLARE @Value1 VarChar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 VarChar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"ValueConversion" "t1"
SET
	"Value1" = CAST(@Value1 AS VARCHAR(20)),
	"Value2" = CAST(@Value2 AS VARCHAR(22)),
	"Enum" = CAST(@Enum AS VARCHAR(6)),
	"EnumNullable" = CAST(@EnumNullable AS VarChar(50) CHARACTER SET UNICODE_FSS),
	"EnumWithNull" = CAST(@EnumWithNull AS VarChar(6) CHARACTER SET UNICODE_FSS),
	"EnumWithNullDeclarative" = CAST(@EnumWithNullDeclarative AS VarChar(6) CHARACTER SET UNICODE_FSS),
	"BoolValue" = CAST(@BoolValue AS VarChar(1) CHARACTER SET UNICODE_FSS),
	"AnotherBoolValue" = CAST(@AnotherBoolValue AS VarChar(1) CHARACTER SET UNICODE_FSS),
	"DateTimeNullable" = CAST(@DateTimeNullable AS TimeStamp)
WHERE
	"t1"."Id" = @Id

-- Firebird.2.5 Firebird

SELECT FIRST 1
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue",
	"e"."AnotherBoolValue",
	"e"."DateTimeNullable"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 2

-- Firebird.2.5 Firebird
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- String
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- String
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar -- String
SET     @BoolValue = 'N'
DECLARE @AnotherBoolValue VarChar -- String
SET     @AnotherBoolValue = 'F'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 3

UPDATE
	"ValueConversion" "t1"
SET
	"Value1" = CAST(@Value1 AS VARCHAR(1)),
	"Value2" = CAST(@Value2 AS VARCHAR(1)),
	"Enum" = CAST(@Enum AS VARCHAR(6)),
	"EnumNullable" = CAST(@EnumNullable AS VarChar(50) CHARACTER SET UNICODE_FSS),
	"EnumWithNull" = CAST(@EnumWithNull AS VarChar(50) CHARACTER SET UNICODE_FSS),
	"EnumWithNullDeclarative" = CAST(@EnumWithNullDeclarative AS VarChar(50) CHARACTER SET UNICODE_FSS),
	"BoolValue" = CAST(@BoolValue AS VarChar(1) CHARACTER SET UNICODE_FSS),
	"AnotherBoolValue" = CAST(@AnotherBoolValue AS VarChar(1) CHARACTER SET UNICODE_FSS),
	"DateTimeNullable" = CAST(@DateTimeNullable AS TimeStamp)
WHERE
	"t1"."Id" = @Id

-- Firebird.2.5 Firebird

SELECT FIRST 1
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue",
	"e"."AnotherBoolValue",
	"e"."DateTimeNullable"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 3

