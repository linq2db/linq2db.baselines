BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [CreateTableTypes]
(
	[Id]            Int    NOT NULL,
	[Int64Nullable] BigInt     NULL
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int64Nullable BigInt -- Int64
SET     @Int64Nullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64Nullable]
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int64Nullable BigInt -- Int64
SET     @Int64Nullable = 4

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64Nullable]
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Int64Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [CreateTableTypes]

