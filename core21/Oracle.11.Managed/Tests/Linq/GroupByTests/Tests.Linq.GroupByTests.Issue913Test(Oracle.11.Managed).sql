﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "Issue913Test" ("InstrumentID", "TradingStatus") VALUES (1,NULL)
	INTO "Issue913Test" ("InstrumentID", "TradingStatus") VALUES (2,'A')
	INTO "Issue913Test" ("InstrumentID", "TradingStatus") VALUES (3,'D')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	CASE
		WHEN selectParam."TradingStatus" = 'D'
			THEN 1
		ELSE 0
	END,
	Count(*)
FROM
	"Issue913Test" selectParam
GROUP BY
	CASE
		WHEN selectParam."TradingStatus" = 'D'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN selectParam."TradingStatus" = 'D'
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue913Test"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

