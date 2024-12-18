BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Transactions"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Transactions"
(
	"TransactionId"   Int  NOT NULL,
	"TransactionDate" Date NOT NULL,

	CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(1,'2020-02-29'::date),
(2,'2021-02-28'::date),
(3,'2019-02-28'::date),
(4,'2020-03-29'::date),
(5,'2020-01-29'::date),
(6,'2020-03-01'::date),
(7,'2020-02-28'::date),
(8,'2020-08-09'::date),
(9,'2021-08-09'::date),
(10,'2019-08-09'::date),
(11,'2020-09-09'::date),
(12,'2020-07-09'::date),
(13,'2020-08-10'::date),
(14,'2020-08-08'::date)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	d."Day_2"
FROM
	(
		SELECT
			Floor(Extract(day From t."TransactionDate"))::Int as "Day_1",
			t."TransactionDate" as "Day_2"
		FROM
			"Transactions" t
	) d
WHERE
	d."Day_1" > 0 AND d."Day_1" IS NOT NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Transactions"

