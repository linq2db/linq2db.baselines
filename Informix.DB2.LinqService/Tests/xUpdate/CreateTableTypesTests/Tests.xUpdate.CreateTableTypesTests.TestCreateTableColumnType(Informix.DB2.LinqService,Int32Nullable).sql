BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int32Nullable Integer -- Int32
SET     @Int32Nullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	Int32Nullable
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int32Nullable Integer(4) -- Int32
SET     @Int32Nullable = 2

INSERT INTO CreateTableTypes
(
	Id,
	Int32Nullable
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Int32Nullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

