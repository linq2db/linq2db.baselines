BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE CreateTableTypes
(
	StringConverted VarChar2(4000)     NULL,
	Id              Int            NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringConverted NVarchar2(4) -- String
SET     @StringConverted = 'null'

INSERT INTO CreateTableTypes
(
	Id,
	StringConverted
)
VALUES
(
	:Id,
	:StringConverted
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringConverted NVarchar2(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO CreateTableTypes
(
	Id,
	StringConverted
)
VALUES
(
	:Id,
	:StringConverted
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.Id,
	t1.StringConverted
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE CreateTableTypes

