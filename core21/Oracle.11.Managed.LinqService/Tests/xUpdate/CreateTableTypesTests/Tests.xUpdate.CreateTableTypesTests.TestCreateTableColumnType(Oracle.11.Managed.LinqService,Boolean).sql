BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CreateTableTypes
(
	Id      Int     NOT NULL,
	Boolean Char(1) NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Boolean_1 Int16
SET     @Boolean_1 = 0

INSERT INTO CreateTableTypes
(
	Id,
	Boolean
)
VALUES
(
	:Id,
	:Boolean_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Boolean_1 Int16
SET     @Boolean_1 = 1

INSERT INTO CreateTableTypes
(
	Id,
	Boolean
)
VALUES
(
	:Id,
	:Boolean_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.Id, 
	t1.Boolean
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE CreateTableTypes

