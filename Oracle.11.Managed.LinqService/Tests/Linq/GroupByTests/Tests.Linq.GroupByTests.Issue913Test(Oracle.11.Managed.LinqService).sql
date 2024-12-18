BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

SELECT
	g_2."IsDelisted",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."TradingStatus" = 'D' AND g_1."TradingStatus" IS NOT NULL
					THEN 1
				ELSE 0
			END as "IsDelisted"
		FROM
			"Issue913Test" g_1
	) g_2
GROUP BY
	g_2."IsDelisted"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

