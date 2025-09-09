BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable NVarChar(2) -- String
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
-- SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable NVarChar(2) -- String
SET     @StringEnumNullable = N'40'

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
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[StringEnumNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

