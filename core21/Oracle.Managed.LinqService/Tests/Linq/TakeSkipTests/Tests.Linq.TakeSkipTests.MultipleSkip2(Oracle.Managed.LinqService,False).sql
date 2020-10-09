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

SELECT 
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
OFFSET 3 ROWS

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
OFFSET 4 ROWS

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE TakeSkipClass

