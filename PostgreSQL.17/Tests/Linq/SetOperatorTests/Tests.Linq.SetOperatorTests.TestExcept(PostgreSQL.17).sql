﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleData"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleData"
(
	"Id"     Int NOT NULL,
	"Value1" Int NOT NULL,
	"Value2" Int NOT NULL,
	"Value3" Int NOT NULL,

	CONSTRAINT "PK_SampleData" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SampleData"
(
	"Id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(1,10,100,1000),
(2,20,200,2000),
(3,30,300,3000),
(4,40,400,4000),
(5,50,500,5000),
(6,60,600,6000),
(7,70,700,7000),
(8,80,800,8000),
(9,90,900,9000),
(10,100,1000,10000)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
			(t."Id"::decimal % 2)::decimal = 0
		UNION ALL
		SELECT
			t_1."Id",
			t_1."Value1",
			t_1."Value2",
			t_1."Value3"
		FROM
			"SampleData" t_1
		WHERE
			(t_1."Id"::decimal % 2)::decimal = 0
	) t1
EXCEPT
SELECT
	t_2."Id",
	t_2."Value1",
	t_2."Value2",
	t_2."Value3"
FROM
	"SampleData" t_2
WHERE
	(t_2."Id"::decimal % 4)::decimal = 0

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "SampleData"

