BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	Id            Int    NOT NULL,
	Int64Nullable BigInt     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int64Nullable BigInt -- Int64
SET     @Int64Nullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	Int64Nullable
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int64Nullable BigInt(8) -- Int64
SET     @Int64Nullable = 4

INSERT INTO CreateTableTypes
(
	Id,
	Int64Nullable
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Int64Nullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes

