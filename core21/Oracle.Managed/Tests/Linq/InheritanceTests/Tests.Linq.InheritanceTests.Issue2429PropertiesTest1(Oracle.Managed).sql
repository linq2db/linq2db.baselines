BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE BaseTable
(
	Value Int NOT NULL,
	Id    Int NOT NULL,

	CONSTRAINT PK_BaseTable PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO BaseTable (Value, Id) VALUES (100,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	x.Value,
	x.Id
FROM
	BaseTable x
WHERE
	x.Id = 1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	x.Value,
	x.Id
FROM
	BaseTable x
WHERE
	x.Id = 1 AND x.Value = 100
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE BaseTable

