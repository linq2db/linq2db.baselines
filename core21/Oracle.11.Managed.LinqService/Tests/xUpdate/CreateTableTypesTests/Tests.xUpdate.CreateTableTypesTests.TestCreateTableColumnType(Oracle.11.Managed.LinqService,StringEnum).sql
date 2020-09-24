BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CreateTableTypes
(
	Id         Int           NOT NULL,
	StringEnum VarChar(4000) NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringEnum Varchar2(2) -- String
SET     @StringEnum = '14'

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	:Id,
	:StringEnum
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringEnum Varchar2(1) -- String
SET     @StringEnum = '4'

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	:Id,
	:StringEnum
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.Id,
	t1.StringEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE CreateTableTypes

