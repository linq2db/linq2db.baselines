BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y','F',NULL)
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F',TIMESTAMP '2020-02-29 01:00:00.000000')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F',TIMESTAMP '2020-02-29 01:00:00.000000')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL)
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F',TIMESTAMP '2020-02-29 01:00:00.000000')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F',TIMESTAMP '2020-02-29 01:00:00.000000')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL)
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F',TIMESTAMP '2020-02-29 01:00:00.000000')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F',TIMESTAMP '2020-02-29 01:00:00.000000')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue", "AnotherBoolValue", "DateTimeNullable") VALUES (10,NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL)
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @testedList NVarchar2(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	m_1."Id",
	m_1."Id",
	m_1."Value1",
	m_1."Value2",
	m_1."Enum",
	m_1."EnumNullable",
	m_1."EnumWithNull",
	m_1."EnumWithNullDeclarative",
	m_1."BoolValue",
	m_1."AnotherBoolValue",
	m_1."DateTimeNullable"
FROM
	"ValueConversion" m_1
WHERE
	:testedList = m_1."Value2" AND :testedList = m_1."Value2"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @testedList NVarchar2(20) -- String
SET     @testedList = '[{"Value":"Value1"}]'

SELECT
	g_1."Id"
FROM
	"ValueConversion" g_1
WHERE
	:testedList = g_1."Value2"
GROUP BY
	g_1."Id"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

