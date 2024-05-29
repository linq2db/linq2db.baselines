BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue913Test')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue913Test"';
END

