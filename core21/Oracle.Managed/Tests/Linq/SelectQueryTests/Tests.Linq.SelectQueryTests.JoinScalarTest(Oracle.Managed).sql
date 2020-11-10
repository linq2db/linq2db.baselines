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

SELECT
	t.Id,
	t.Value,
	1
FROM
	SampleClass t
		INNER JOIN (
			SELECT
				1 as c1
			FROM SYS.DUAL
		) s ON s.c1 = t.Id

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE SampleClass

