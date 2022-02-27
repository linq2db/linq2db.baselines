BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE TakeSkipClass
(
	Value VarChar(10)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

SELECT
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
OFFSET 6 ROWS

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE TakeSkipClass

