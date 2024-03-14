﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue913Test"
		(
			"InstrumentID"  Int        NOT NULL,
			"TradingStatus" VarChar(1)     NULL,

			CONSTRAINT "PK_Issue913Test" PRIMARY KEY ("InstrumentID")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentID Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus Varchar2 -- String
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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentID Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus Varchar2(1) -- String
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
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @InstrumentID Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus Varchar2(1) -- String
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
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	g_2."c1",
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "c1"
		FROM
			"Issue913Test" g_1
	) g_2
GROUP BY
	g_2."c1"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

