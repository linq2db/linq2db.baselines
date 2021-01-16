BeforeExecute
-- Firebird

CREATE TABLE "ValueConversion"
(
	"Id"                      Int                                    NOT NULL,
	"Value1"                  VarChar(200) CHARACTER SET UNICODE_FSS,
	"Value2"                  VarChar(200) CHARACTER SET UNICODE_FSS,
	"Enum"                    VarChar(50) CHARACTER SET UNICODE_FSS  NOT NULL,
	"EnumNullable"            VarChar(50),
	"EnumWithNull"            VarChar(50),
	"EnumWithNullDeclarative" VarChar(50),
	"BoolValue"               VarChar(1)                             NOT NULL,
	"DateTimeNullable"        TimeStamp,

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 VarChar(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @Value2 VarChar(22) -- String
SET     @Value2 = '[{"Value":"inserted"}]'
DECLARE @BoolValue VarChar -- String
SET     @BoolValue = 'Y'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Enum",
	"Value2",
	"BoolValue"
)
VALUES
(
	Cast(@Id as Int),
	Cast(@Value1 as VarChar(200) CHARACTER SET UNICODE_FSS),
	Cast(@Enum as VarChar(50) CHARACTER SET UNICODE_FSS),
	Cast(@Value2 as VarChar(200) CHARACTER SET UNICODE_FSS),
	Cast(@BoolValue as VarChar(1))
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value1 VarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 VarChar -- String
SET     @Value2 = NULL
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @BoolValue VarChar -- String
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"BoolValue"
)
VALUES
(
	Cast(@Id as Int),
	Cast(@Value1 as VarChar(200) CHARACTER SET UNICODE_FSS),
	Cast(@Value2 as VarChar(200) CHARACTER SET UNICODE_FSS),
	Cast(@Enum as VarChar(50) CHARACTER SET UNICODE_FSS),
	Cast(@BoolValue as VarChar(1))
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value1 VarChar(21) -- String
SET     @Value1 = '{"some":"inserted3}"}'
DECLARE @Value2 VarChar(23) -- String
SET     @Value2 = '[{"Value":"inserted3"}]'
DECLARE @Enum VarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar -- String
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- String
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- String
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar -- String
SET     @BoolValue = 'Y'
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue",
	"DateTimeNullable"
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Enum,
	@EnumNullable,
	@EnumWithNull,
	@EnumWithNullDeclarative,
	@BoolValue,
	@DateTimeNullable
)

BeforeExecute
-- Firebird

DROP TABLE "ValueConversion"

