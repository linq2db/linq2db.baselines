BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE SampleClass
(
	Id    Int NOT NULL,
	Value Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	CURRENT_TIMESTAMP + 1 * INTERVAL '1' DAY, 
	CURRENT_TIMESTAMP + 2 * INTERVAL '1' DAY
FROM SYS.DUAL
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE SampleClass

