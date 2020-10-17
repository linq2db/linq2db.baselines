BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y')
	INTO "ValueConversion" ("Id", "Value1", "Value2", "Enum", "EnumNullable", "EnumWithNull", "EnumWithNullDeclarative", "BoolValue") VALUES (10,NULL,NULL,'Value1','Value2','Value2','Value2','N')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Enum",
	t1."EnumNullable",
	t1."EnumWithNull",
	t1."EnumWithNullDeclarative",
	t1."BoolValue"
FROM
	"ValueConversion" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."Id",
	t."Value1",
	t."Value2"
FROM
	"ValueConversion" t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."Id",
	t."Value1",
	t."Value2"
FROM
	"ValueConversion" t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."Id",
	t."Value1",
	t."Value2"
FROM
	"ValueConversion" t
UNION ALL
SELECT
	t_1."Id",
	t_1."Value1",
	t_1."Value2"
FROM
	"ValueConversion" t_1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	t2."Value2"
FROM
	(
		SELECT
			t1."Value2",
			ROWNUM as RN
		FROM
			(
				SELECT
					q."Value2"
				FROM
					(
						SELECT
							t."Id",
							t."Value2"
						FROM
							"ValueConversion" t
					) q
				ORDER BY
					q."Id"
			) t1
		WHERE
			ROWNUM <= (:skip + :take)
	) t2
WHERE
	t2.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ValueConversion"

