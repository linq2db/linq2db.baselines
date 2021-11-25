﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue913Test"
			(
				"InstrumentID"  Int      NOT NULL,
				"TradingStatus" NChar(1),

				CONSTRAINT "PK_Issue913Test" PRIMARY KEY ("InstrumentID")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
SELECT 1,NULL FROM rdb$database UNION ALL
SELECT 2,'A' FROM rdb$database UNION ALL
SELECT 3,'D' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	CASE
		WHEN "selectParam"."TradingStatus" = 'D'
			THEN 1
		ELSE 0
	END,
	Count(*)
FROM
	"Issue913Test" "selectParam"
GROUP BY
	CASE
		WHEN "selectParam"."TradingStatus" = 'D'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN "selectParam"."TradingStatus" = 'D'
			THEN 1
		ELSE 0
	END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

