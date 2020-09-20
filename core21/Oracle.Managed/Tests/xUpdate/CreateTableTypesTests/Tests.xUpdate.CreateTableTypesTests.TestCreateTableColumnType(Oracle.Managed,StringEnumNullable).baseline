BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE CreateTableTypes
(
	Id                 Int           NOT NULL,
	StringEnumNullable VarChar(4000)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringEnumNullable Varchar2 -- String
SET     @StringEnumNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	:Id,
	:StringEnumNullable
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringEnumNullable Varchar2(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	:Id,
	:StringEnumNullable
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.Id,
	t1.StringEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE CreateTableTypes

