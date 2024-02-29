BeforeExecute
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
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus Char -- String
SET     @TradingStatus = NULL

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus Char(1) -- String
SET     @TradingStatus = 'A'

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @InstrumentID Integer -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus Char(1) -- String
SET     @TradingStatus = 'D'

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

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
			CASE
				WHEN "selectParam"."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "c1"
		FROM
			"Issue913Test" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1",
	"t1"."c1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

