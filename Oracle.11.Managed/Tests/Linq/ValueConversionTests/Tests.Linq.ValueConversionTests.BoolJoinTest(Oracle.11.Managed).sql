BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
DECLARE @BoolValue Varchar2 -- String
SET     @BoolValue = 'Y'
DECLARE @BoolValue_1 Varchar2 -- String
SET     @BoolValue_1 = 'Y'

SELECT
	t1."Enum"
FROM
	"ValueConversion" t1
		INNER JOIN (
			SELECT
				*
			FROM
				"ValueConversion" t2
			WHERE
				t2."BoolValue" = :BoolValue
		) t2_1 ON t1."BoolValue" = :BoolValue_1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

