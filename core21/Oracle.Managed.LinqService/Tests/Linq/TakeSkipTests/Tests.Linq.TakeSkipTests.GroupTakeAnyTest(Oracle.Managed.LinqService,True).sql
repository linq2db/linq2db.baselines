BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE TakeSkipClass
(
	Value VarChar(10)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO TakeSkipClass (Value) VALUES ('PIPPO')
	INTO TakeSkipClass (Value) VALUES ('PLUTO')
	INTO TakeSkipClass (Value) VALUES ('PLUTO')
	INTO TakeSkipClass (Value) VALUES ('BOLTO')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			TakeSkipClass t1
		GROUP BY
			t1.Value
		HAVING
			Count(*) > 1
		FETCH NEXT :take ROWS ONLY
	) THEN 1 ELSE 0 END
FROM SYS.DUAL

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE TakeSkipClass

