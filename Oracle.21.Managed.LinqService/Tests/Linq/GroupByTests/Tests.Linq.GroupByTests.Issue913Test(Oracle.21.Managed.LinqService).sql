BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12
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
-- Oracle.21.Managed Oracle.Managed Oracle12
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
-- Oracle.21.Managed Oracle.Managed Oracle12
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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."c1",
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN selectParam."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "Key_1",
			CASE
				WHEN selectParam."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "c1"
		FROM
			"Issue913Test" selectParam
	) t1
GROUP BY
	t1."Key_1",
	t1."c1"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

