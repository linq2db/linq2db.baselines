BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue913Test"
(
	"InstrumentID"  Int      NOT NULL,
	"TradingStatus" NChar(1),

	CONSTRAINT "PK_Issue913Test" PRIMARY KEY ("InstrumentID")
)

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
	"t1"."c1", 
	Count(*)
FROM
	( 
		SELECT 
			CASE
				WHEN "selectParam"."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "Key_1", 
			CASE WHEN "selectParam"."TradingStatus" = 'D' THEN 1 ELSE 0 END as "c1"
		FROM
			"Issue913Test" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1",
	"t1"."c1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue913Test"

