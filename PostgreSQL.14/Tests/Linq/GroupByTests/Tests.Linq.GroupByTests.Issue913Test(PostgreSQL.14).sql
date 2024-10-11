BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue913Test"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue913Test"
(
	"InstrumentID"  Int  NOT NULL,
	"TradingStatus" text     NULL,

	CONSTRAINT "PK_Issue913Test" PRIMARY KEY ("InstrumentID")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(1,NULL),
(2,'A'),
(3,'D')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."IsDelisted",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."TradingStatus" = 'D' THEN True
				ELSE False
			END as "IsDelisted"
		FROM
			"Issue913Test" g_1
	) t1
GROUP BY
	t1."IsDelisted"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue913Test"

