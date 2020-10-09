BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CreateTableTypes
(
	Id            Int NOT NULL,
	Int32Nullable Int     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int32Nullable Int32
SET     @Int32Nullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	Int32Nullable
)
VALUES
(
	:Id,
	:Int32Nullable
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int32Nullable Int32
SET     @Int32Nullable = 2

INSERT INTO CreateTableTypes
(
	Id,
	Int32Nullable
)
VALUES
(
	:Id,
	:Int32Nullable
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.Id, 
	t1.Int32Nullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE CreateTableTypes

