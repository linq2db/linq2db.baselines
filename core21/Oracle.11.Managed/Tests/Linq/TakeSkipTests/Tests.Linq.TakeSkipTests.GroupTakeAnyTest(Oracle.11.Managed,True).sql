BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE TakeSkipClass
(
	Value VarChar(10)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO TakeSkipClass (Value) VALUES ('PIPPO')
	INTO TakeSkipClass (Value) VALUES ('PLUTO')
	INTO TakeSkipClass (Value) VALUES ('PLUTO')
	INTO TakeSkipClass (Value) VALUES ('BOLTO')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					*
				FROM
					TakeSkipClass t1
				GROUP BY
					t1.Value
				HAVING
					Count(*) > 1
			) t2
		WHERE
			ROWNUM <= :take
	) THEN 1 ELSE 0 END
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TakeSkipClass

