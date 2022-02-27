BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "ValueConversion"
(
	"Id"                      Integer       NOT NULL,
	"Value1"                  NVarChar(200)     NULL,
	"Value2"                  NVarChar(200)     NULL,
	"Enum"                    NVarChar(50)  NOT NULL,
	"EnumNullable"            VarChar(50)       NULL,
	"EnumWithNull"            VarChar(50)       NULL,
	"EnumWithNullDeclarative" VarChar(50)       NULL,
	"BoolValue"               VarChar(1)    NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str1"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value1"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str2"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value2"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str3"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value3"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value3'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value3'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value3'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str4"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value4"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str5"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value5"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str6"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value6"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str7"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value7"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value3'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value3'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value3'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 8
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str8"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value8"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value2'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 9
DECLARE @Value1 NVarChar(15) -- String
SET     @Value1 = '{"some":"str9"}'
DECLARE @Value2 NVarChar(20) -- String
SET     @Value2 = '[{"Value":"Value9"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value3'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value1'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value1'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'Y'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @Value1 NVarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar -- String
SET     @Value2 = NULL
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value2'
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Value2",
	"Enum",
	"EnumNullable",
	"EnumWithNull",
	"EnumWithNullDeclarative",
	"BoolValue"
)
VALUES
(
	:"Id",
	:"Value1",
	:"Value2",
	:"Enum",
	:"EnumNullable",
	:"EnumWithNull",
	:"EnumWithNullDeclarative",
	:"BoolValue"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value2 NVarChar(21) -- String
SET     @Value2 = '[{"Value":"updated"}]'
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = "ValueConversion"."Value1",
	"ValueConversion"."Value2" = :"Value2",
	"ValueConversion"."EnumWithNull" = :"EnumWithNull",
	"ValueConversion"."EnumWithNullDeclarative" = :"EnumWithNullDeclarative"
WHERE
	"ValueConversion"."Id" = 1

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 1
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value1 NVarChar(20) -- String
SET     @Value1 = '{"some":"updated2}"}'
DECLARE @Value2 NVarChar(22) -- String
SET     @Value2 = '[{"Value":"updated2"}]'
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar(6) -- AnsiString
SET     @EnumWithNull = 'Value2'
DECLARE @EnumWithNullDeclarative VarChar(6) -- AnsiString
SET     @EnumWithNullDeclarative = 'Value2'
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = :"Value1",
	"ValueConversion"."Value2" = :"Value2",
	"ValueConversion"."Enum" = :"Enum",
	"ValueConversion"."EnumNullable" = :"EnumNullable",
	"ValueConversion"."EnumWithNull" = :"EnumWithNull",
	"ValueConversion"."EnumWithNullDeclarative" = :"EnumWithNullDeclarative",
	"ValueConversion"."BoolValue" = :"BoolValue"
WHERE
	"ValueConversion"."Id" = :"Id"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 2
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value1 NVarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar -- String
SET     @Value2 = NULL
DECLARE @Enum NVarChar(6) -- String
SET     @Enum = 'Value1'
DECLARE @EnumNullable VarChar -- AnsiString
SET     @EnumNullable = NULL
DECLARE @EnumWithNull VarChar -- AnsiString
SET     @EnumWithNull = NULL
DECLARE @EnumWithNullDeclarative VarChar -- AnsiString
SET     @EnumWithNullDeclarative = NULL
DECLARE @BoolValue VarChar -- AnsiString
SET     @BoolValue = 'N'
DECLARE @Id  -- Int32
SET     @Id = 3

UPDATE
	"ValueConversion"
SET
	"ValueConversion"."Value1" = :"Value1",
	"ValueConversion"."Value2" = :"Value2",
	"ValueConversion"."Enum" = :"Enum",
	"ValueConversion"."EnumNullable" = :"EnumNullable",
	"ValueConversion"."EnumWithNull" = :"EnumWithNull",
	"ValueConversion"."EnumWithNullDeclarative" = :"EnumWithNullDeclarative",
	"ValueConversion"."BoolValue" = :"BoolValue"
WHERE
	"ValueConversion"."Id" = :"Id"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"e"."Id",
	"e"."Value1",
	"e"."Value2",
	"e"."Enum",
	"e"."EnumNullable",
	"e"."EnumWithNull",
	"e"."EnumWithNullDeclarative",
	"e"."BoolValue"
FROM
	"ValueConversion" "e"
WHERE
	"e"."Id" = 3
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "ValueConversion"

