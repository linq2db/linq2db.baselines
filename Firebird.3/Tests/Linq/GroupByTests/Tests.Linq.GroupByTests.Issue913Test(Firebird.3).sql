﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
SELECT 1,NULL FROM rdb$database UNION ALL
SELECT 2,'A' FROM rdb$database UNION ALL
SELECT 3,'D' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"g_2"."IsDelisted",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN "g_1"."TradingStatus" = 'D' THEN TRUE
				ELSE FALSE
			END as "IsDelisted"
		FROM
			"Issue913Test" "g_1"
	) "g_2"
GROUP BY
	"g_2"."IsDelisted"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

