BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue913Test"
(
	"InstrumentID"  Integer  NOT NULL,
	"TradingStatus" NChar(1)     NULL,

	PRIMARY KEY ("InstrumentID")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentID  -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus NChar -- StringFixedLength
SET     @TradingStatus = NULL

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	:"InstrumentID",
	:"TradingStatus"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentID  -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus NChar(1) -- StringFixedLength
SET     @TradingStatus = 'A'

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	:"InstrumentID",
	:"TradingStatus"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @InstrumentID  -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus NChar(1) -- StringFixedLength
SET     @TradingStatus = 'D'

INSERT INTO "Issue913Test"
(
	"InstrumentID",
	"TradingStatus"
)
VALUES
(
	:"InstrumentID",
	:"TradingStatus"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."c2",
	Count(*)
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."TradingStatus" = 'D'
					THEN 1
				ELSE 0
			END as "c1",
			CASE WHEN "selectParam"."TradingStatus" = 'D' THEN 1 ELSE 0 END as "c2"
		FROM
			"Issue913Test" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1",
	"t1"."c2"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue913Test"

