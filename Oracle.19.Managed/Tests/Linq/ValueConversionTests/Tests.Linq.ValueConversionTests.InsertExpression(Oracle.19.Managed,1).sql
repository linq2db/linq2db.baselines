BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "ValueConversion"
		(
			"Id"                      Int           NOT NULL,
			"Value1"                  VarChar2(200)     NULL,
			"Value2"                  VarChar2(200)     NULL,
			"Enum"                    VarChar2(50)  NOT NULL,
			"EnumNullable"            VarChar(50)       NULL,
			"EnumWithNull"            VarChar(50)       NULL,
			"EnumWithNullDeclarative" VarChar(50)       NULL,
			"BoolValue"               VarChar(1)    NOT NULL,
			"AnotherBoolValue"        VarChar(1)    NOT NULL,
			"DateTimeNullable"        timestamp         NULL,

			CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @iteration Int32
SET     @iteration = 1
DECLARE @Value1 NVarchar2(2) -- String
SET     @Value1 = '[]'
DECLARE @Enum NVarchar2(6) -- String
SET     @Enum = 'Value1'
DECLARE @inserted NVarchar2(22) -- String
SET     @inserted = '[{"Value":"inserted"}]'
DECLARE @boolValue Varchar2 -- String
SET     @boolValue = 'N'
DECLARE @boolValue_1 Varchar2 -- String
SET     @boolValue_1 = 'F'

INSERT INTO "ValueConversion"
(
	"Id",
	"Value1",
	"Enum",
	"Value2",
	"BoolValue",
	"AnotherBoolValue"
)
VALUES
(
	:iteration,
	:Value1,
	:Enum,
	:inserted,
	:boolValue,
	:boolValue_1
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @iteration Int32
SET     @iteration = 1

SELECT
	e."Id",
	e."Value1",
	e."Value2",
	e."Enum",
	e."EnumNullable",
	e."EnumWithNull",
	e."EnumWithNullDeclarative",
	e."BoolValue",
	e."AnotherBoolValue",
	e."DateTimeNullable"
FROM
	"ValueConversion" e
WHERE
	e."Id" = :iteration
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

