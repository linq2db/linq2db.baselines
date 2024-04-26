BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Transactions"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Transactions"
(
	"TransactionId"   Int  NOT NULL,
	"TransactionDate" Date NOT NULL,

	CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	Floor(Extract(day From d."TransactionDate"))::Int > 0

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Transactions"

