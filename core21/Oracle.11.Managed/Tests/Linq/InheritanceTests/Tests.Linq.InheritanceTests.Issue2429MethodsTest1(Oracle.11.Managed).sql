BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE BaseTable
(
	Value Int NOT NULL,
	Id    Int NOT NULL,

	CONSTRAINT PK_BaseTable PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO BaseTable (Value, Id) VALUES (100,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	x.Value,
	x.Id
FROM
	BaseTable x
WHERE
	x.Id = 1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	x.Value,
	x.Id
FROM
	BaseTable x
WHERE
	x.Id = 1 AND x.Value = 100 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE BaseTable

