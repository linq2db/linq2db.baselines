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
	t1.c1,
	Count(*)
FROM
	(
		SELECT
			Cast(CASE
				WHEN selectParam.TradingStatus = 'D'
					THEN 't'
				ELSE 'f'
			END as BOOLEAN) as Key_1,
			Cast(CASE
				WHEN selectParam.TradingStatus = 'D'
					THEN 't'
				ELSE 'f'
			END as BOOLEAN) as c1
		FROM
			Issue913Test selectParam
	) t1
GROUP BY
	t1.Key_1,
	t1.c1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue913Test

