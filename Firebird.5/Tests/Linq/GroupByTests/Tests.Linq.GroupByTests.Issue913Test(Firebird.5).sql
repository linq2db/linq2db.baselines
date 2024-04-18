﻿BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
SELECT 1,NULL FROM rdb$database UNION ALL
SELECT 2,'A' FROM rdb$database UNION ALL
SELECT 3,'D' FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."c1",
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."TradingStatus" = 'D'
					THEN TRUE
				ELSE FALSE
			END as "Key_1",
			CASE
				WHEN "selectParam"."TradingStatus" = 'D'
					THEN TRUE
				ELSE FALSE
			END as "c1"
		FROM
			"Issue913Test" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1",
	"t1"."c1"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

