BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE TakeSkipClass
(
	Value VarChar(10)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO TakeSkipClass (Value) VALUES ('PLUTO')
	INTO TakeSkipClass (Value) VALUES ('PIPPO')
	INTO TakeSkipClass (Value) VALUES ('PLUTO')
	INTO TakeSkipClass (Value) VALUES ('BOLTO')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take_1 Int32
SET     @take_1 = 2

SELECT 
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
FETCH NEXT :take_1 ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE TakeSkipClass

