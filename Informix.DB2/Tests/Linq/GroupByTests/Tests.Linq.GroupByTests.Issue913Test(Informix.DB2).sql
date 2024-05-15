BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue913Test

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue913Test
(
	InstrumentID  Int      NOT NULL,
	TradingStatus NChar(1)     NULL,

	PRIMARY KEY (InstrumentID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @InstrumentID Integer(4) -- Int32
SET     @InstrumentID = 1
DECLARE @TradingStatus Char -- StringFixedLength
SET     @TradingStatus = NULL

INSERT INTO Issue913Test
(
	InstrumentID,
	TradingStatus
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @InstrumentID Integer(4) -- Int32
SET     @InstrumentID = 2
DECLARE @TradingStatus Char(1) -- StringFixedLength
SET     @TradingStatus = 'A'

INSERT INTO Issue913Test
(
	InstrumentID,
	TradingStatus
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @InstrumentID Integer(4) -- Int32
SET     @InstrumentID = 3
DECLARE @TradingStatus Char(1) -- StringFixedLength
SET     @TradingStatus = 'D'

INSERT INTO Issue913Test
(
	InstrumentID,
	TradingStatus
)
VALUES
(
	@InstrumentID,
	@TradingStatus
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	g_2.IsDelisted,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1.TradingStatus = 'D' THEN 't'
				ELSE 'f'
			END::BOOLEAN as IsDelisted
		FROM
			Issue913Test g_1
	) g_2
GROUP BY
	g_2.IsDelisted

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue913Test

