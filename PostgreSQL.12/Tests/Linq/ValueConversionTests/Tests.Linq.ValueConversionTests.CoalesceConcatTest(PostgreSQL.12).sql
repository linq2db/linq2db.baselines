BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ValueConversion"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "ValueConversion"
(
	"Id"                      Int          NOT NULL,
	"Value1"                  VarChar(200)     NULL,
	"Value2"                  VarChar(200)     NULL,
	"Enum"                    VarChar(50)  NOT NULL,
	"EnumNullable"            VarChar(50)      NULL,
	"EnumWithNull"            VarChar(50)      NULL,
	"EnumWithNullDeclarative" VarChar(50)      NULL,
	"BoolValue"               VarChar(1)   NOT NULL,
	"AnotherBoolValue"        VarChar(1)   NOT NULL,
	"DateTimeNullable"        TimeStamp        NULL,

	CONSTRAINT "PK_ValueConversion" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
	"AnotherBoolValue",
	"DateTimeNullable"
)
VALUES
(1,'{"some":"str1"}','[{"Value":"Value1"}]','Value1','Value1','Value1','Value1','Y','F',NULL),
(2,'{"some":"str2"}','[{"Value":"Value2"}]','Value2','Value2','Value2','Value2','N','F','2020-02-29'::date),
(3,'{"some":"str3"}','[{"Value":"Value3"}]','Value3','Value3','Value3','Value3','N','F','2020-02-29'::date),
(4,'{"some":"str4"}','[{"Value":"Value4"}]','Value1',NULL,NULL,NULL,'N','F',NULL),
(5,'{"some":"str5"}','[{"Value":"Value5"}]','Value2','Value1','Value1','Value1','Y','F','2020-02-29'::date),
(6,'{"some":"str6"}','[{"Value":"Value6"}]','Value3','Value2','Value2','Value2','N','F','2020-02-29'::date),
(7,'{"some":"str7"}','[{"Value":"Value7"}]','Value1','Value3','Value3','Value3','N','F',NULL),
(8,'{"some":"str8"}','[{"Value":"Value8"}]','Value2',NULL,NULL,NULL,'N','F','2020-02-29'::date),
(9,'{"some":"str9"}','[{"Value":"Value9"}]','Value3','Value1','Value1','Value1','Y','F','2020-02-29'::date),
(10,NULL,NULL,'Value1','Value2','Value2','Value2','N','F',NULL)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t2."Converted1",
	t2."Converted2",
	t2."Converted1"
FROM
	(
		SELECT
			Coalesce(t1."EnumNullable", t1."Enum") as "Converted1",
			t1."Value1" as "Converted2"
		FROM
			"ValueConversion" t1
	) t2
UNION
SELECT
	Coalesce(t1_1."EnumNullable", t1_1."Enum"),
	t1_1."Value1",
	Coalesce(t1_1."EnumNullable", t1_1."Enum")
FROM
	"ValueConversion" t1_1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ValueConversion"

