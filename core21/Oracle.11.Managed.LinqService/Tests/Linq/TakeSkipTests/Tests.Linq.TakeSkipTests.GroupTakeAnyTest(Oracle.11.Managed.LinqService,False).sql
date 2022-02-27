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
			ROWNUM <= 1
	) THEN 1 ELSE 0 END
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE TakeSkipClass

