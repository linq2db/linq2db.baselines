BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Issue913Test
(
	InstrumentID  Int        NOT NULL,
	TradingStatus VarChar(1)     NULL,

	CONSTRAINT PK_Issue913Test PRIMARY KEY (InstrumentID)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO Issue913Test (InstrumentID, TradingStatus) VALUES (1,NULL)
	INTO Issue913Test (InstrumentID, TradingStatus) VALUES (2,'A')
	INTO Issue913Test (InstrumentID, TradingStatus) VALUES (3,'D')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.c1, 
	Count(*)
FROM
	( 
		SELECT 
			CASE
				WHEN selectParam.TradingStatus = 'D'
					THEN 1
				ELSE 0
			END as Key_1, 
			CASE WHEN selectParam.TradingStatus = 'D' THEN 1 ELSE 0 END as c1
		FROM
			Issue913Test selectParam
	) t1
GROUP BY
	t1.Key_1,
	t1.c1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE Issue913Test

