BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE SampleClass
(
	Id     Int         NOT NULL,
	Value1 VarChar(50)     NULL,
	Value2 VarChar(50)     NULL,
	Value3 VarChar(50)     NULL,
	Value4 VarChar(50)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO SampleClass (Id, Value1, Value2, Value3, Value4) VALUES (1,'V1','V2',NULL,'V4')
	INTO SampleClass (Id, Value1, Value2, Value3, Value4) VALUES (2,NULL,'Z2',NULL,NULL)
	INTO SampleClass (Id, Value1, Value2, Value3, Value4) VALUES (3,'Z1',NULL,NULL,'Z4')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	(
		SELECT 
			COUNT(DISTINCT t1.Value1)
		FROM
			SampleClass t1
	), 
	(
		SELECT 
			LISTAGG(t2.Value1, ' -> ') WITHIN GROUP (ORDER BY ROWNUM)
		FROM
			SampleClass t2
	)
FROM
	SampleClass t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE SampleClass

