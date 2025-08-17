BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable UniVarChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnumNullable]
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable UniVarChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnumNullable]
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[Id],
	[t1].[StringEnumNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

