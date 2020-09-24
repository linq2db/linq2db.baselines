BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE SampleClass
(
	Id    Int NOT NULL,
	Value Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO SampleClass (Id, Value) VALUES (1,100)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t_1.Id,
	t_1.Value,
	t2.Value1,
	t2.Value2
FROM
	SampleClass t_1
		OUTER APPLY (
			SELECT
				t1.Value1,
				t1.Value2
			FROM
				(
					SELECT
						CURRENT_TIMESTAMP + t.Value * INTERVAL '1' DAY as Value1,
						CURRENT_TIMESTAMP + 2 * INTERVAL '1' DAY as Value2
					FROM
						SampleClass t
					WHERE
						t.Value = 1
					UNION
					SELECT
						CURRENT_TIMESTAMP + 3 * INTERVAL '1' DAY as Value1,
						CURRENT_TIMESTAMP + 4 * INTERVAL '1' DAY as Value2
					FROM SYS.DUAL
				) t1
			FETCH NEXT :take ROWS ONLY
		) t2

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE SampleClass

