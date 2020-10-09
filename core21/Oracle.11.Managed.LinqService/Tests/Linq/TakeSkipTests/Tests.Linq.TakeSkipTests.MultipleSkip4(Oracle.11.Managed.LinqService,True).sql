﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE TakeSkipClass
(
	Value VarChar(10)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO TakeSkipClass (Value) VALUES ('Value1')
	INTO TakeSkipClass (Value) VALUES ('Value2')
	INTO TakeSkipClass (Value) VALUES ('Value3')
	INTO TakeSkipClass (Value) VALUES ('Value4')
	INTO TakeSkipClass (Value) VALUES ('Value5')
	INTO TakeSkipClass (Value) VALUES ('Value6')
	INTO TakeSkipClass (Value) VALUES ('Value7')
	INTO TakeSkipClass (Value) VALUES ('Value8')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 6

SELECT 
	t3.Value_1
FROM
	( 
		SELECT 
			t2.Value_1, 
			ROWNUM as RN
		FROM
			( 
				SELECT 
					t1.Value as Value_1
				FROM
					TakeSkipClass t1
				ORDER BY
					t1.Value
			) t2
	) t3
WHERE
	t3.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TakeSkipClass

