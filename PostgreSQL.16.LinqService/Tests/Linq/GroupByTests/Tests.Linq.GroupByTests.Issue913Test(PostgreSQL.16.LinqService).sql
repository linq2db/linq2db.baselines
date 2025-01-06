BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue913Test"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue913Test"
(
	"InstrumentID"  Int  NOT NULL,
	"TradingStatus" text     NULL,

	CONSTRAINT "PK_Issue913Test" PRIMARY KEY ("InstrumentID")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus Text -- String
SET     @TradingStatus = NULL

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	:InstrumentID,
	:TradingStatus
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus Text(1) -- String
SET     @TradingStatus = 'A'

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	:InstrumentID,
	:TradingStatus
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus Text(1) -- String
SET     @TradingStatus = 'D'

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	:InstrumentID,
	:TradingStatus
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_2.cond,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."TradingStatus" = 'D' THEN True
				ELSE False
			END as cond
		FROM
			"Issue913Test" g_1
	) g_2
GROUP BY
	g_2.cond

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue913Test"

