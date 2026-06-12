-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code UniVarChar(5) -- String
SET     @Code = 'alpha'
DECLARE @Nested_Field Bit -- Boolean
SET     @Nested_Field = 0

INSERT INTO [ComplexPropertyTarget]
(
	[Id],
	[Code],
	[Field]
)
VALUES
(
	@Id,
	@Code,
	@Nested_Field
)

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Code UniVarChar(4) -- String
SET     @Code = 'beta'
DECLARE @Nested_Field Bit -- Boolean
SET     @Nested_Field = 0

INSERT INTO [ComplexPropertyTarget]
(
	[Id],
	[Code],
	[Field]
)
VALUES
(
	@Id,
	@Code,
	@Nested_Field
)

-- Sybase.Managed Sybase

MERGE INTO [ComplexPropertyTarget] [Target]
USING (
	SELECT 1 AS [Id], 'alpha-new' AS [Code], 1 AS [Nested_Field]
	UNION ALL
	SELECT 3, 'gamma', 1) [Source]
(
	[Id],
	[Code],
	[Nested_Field]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Code] = [Source].[Code],
	[Field] = [Source].[Nested_Field]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Code],
	[Field]
)
VALUES
(
	[Source].[Id],
	[Source].[Code],
	[Source].[Nested_Field]
)

-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Code],
	[t1].[Field]
FROM
	[ComplexPropertyTarget] [t1]
ORDER BY
	[t1].[Id]

