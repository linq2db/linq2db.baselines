BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleData"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SampleData"
(
	"Id"     Int NOT NULL,
	"Value1" Int NOT NULL,
	"Value2" Int NOT NULL,
	"Value3" Int NOT NULL,

	CONSTRAINT "PK_SampleData" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	r_3."Value_1"
FROM
	(
		SELECT
			r."Id",
			r."Value1" as "Value_1"
		FROM
			"SampleData" r
		WHERE
			(r."Id"::decimal % 2)::decimal = 0
		EXCEPT
		SELECT
			r_1."Id",
			r_1."Value2" / 10 as "Value_1"
		FROM
			"SampleData" r_1
		WHERE
			(r_1."Id"::decimal % 4)::decimal = 0
		EXCEPT
		SELECT
			r_2."Id",
			r_2."Value1" as "Value_1"
		FROM
			"SampleData" r_2
		WHERE
			(r_2."Id"::decimal % 6)::decimal = 0
	) r_3

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SampleData"

