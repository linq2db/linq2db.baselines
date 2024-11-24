BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Enum",
	t1."EnumNullable",
	t1."EnumWithNull",
	t1."EnumWithNullDeclarative",
	t1."BoolValue",
	t1."AnotherBoolValue",
	t1."DateTimeNullable"
FROM
	"ValueConversion" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."Value1",
	t."Value2"
FROM
	"ValueConversion" t
ORDER BY
	t."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2"
FROM
	(
		SELECT
			t."Id",
			t."Value1",
			t."Value2"
		FROM
			"ValueConversion" t
	) t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t2."Id",
	t2."Value1",
	t2."Value2"
FROM
	(
		SELECT
			t."Id",
			t."Value1",
			t."Value2"
		FROM
			"ValueConversion" t
		UNION ALL
		SELECT
			t1."Id",
			t1."Value1",
			t1."Value2"
		FROM
			(
				SELECT
					t_1."Id",
					t_1."Value1",
					t_1."Value2"
				FROM
					"ValueConversion" t_1
			) t1
	) t2
ORDER BY
	t2."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t1."Value2"
FROM
	(
		SELECT
			t."Id",
			t."Value2"
		FROM
			"ValueConversion" t
	) t1
ORDER BY
	t1."Id"
OFFSET :skip ROWS FETCH NEXT 1 ROWS ONLY 

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ValueConversion"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

