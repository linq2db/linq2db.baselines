BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "SampleData"
(
	"Id"     Int NOT NULL,
	"Value1" Int NOT NULL,
	"Value2" Int NOT NULL,
	"Value3" Int NOT NULL,

	CONSTRAINT "PK_SampleData" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (1,10,100,1000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (2,20,200,2000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (3,30,300,3000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (4,40,400,4000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (5,50,500,5000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (6,60,600,6000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (7,70,700,7000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (8,80,800,8000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (9,90,900,9000)
	INTO "SampleData" ("Id", "Value1", "Value2", "Value3") VALUES (10,100,1000,10000)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t2."Id",
	t2."Value1",
	t2."Value2",
	t2."Value3"
FROM
	(
		SELECT
			t1."Id",
			t1."Value1",
			t1."Value2",
			t1."Value3"
		FROM
			(
				SELECT
					t."Id",
					t."Value1",
					t."Value2",
					t."Value3"
				FROM
					"SampleData" t
				WHERE
					MOD(t."Id", 2) = 0
				UNION ALL
				SELECT
					t_1."Id",
					t_1."Value1",
					t_1."Value2",
					t_1."Value3"
				FROM
					"SampleData" t_1
				WHERE
					MOD(t_1."Id", 2) = 0
			) t1
		MINUS
		SELECT
			t_2."Id",
			t_2."Value1",
			t_2."Value2",
			t_2."Value3"
		FROM
			"SampleData" t_2
		WHERE
			MOD(t_2."Id", 4) = 0
	) t2

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "SampleData"

