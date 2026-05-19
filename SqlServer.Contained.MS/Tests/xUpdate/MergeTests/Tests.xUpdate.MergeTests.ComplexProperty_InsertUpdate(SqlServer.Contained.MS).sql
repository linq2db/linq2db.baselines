-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(50) -- String
SET     @Code = N'alpha'
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

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Code NVarChar(50) -- String
SET     @Code = N'beta'
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

-- SqlServer.Contained.MS SqlServer.2019

MERGE INTO [ComplexPropertyTarget] [Target]
USING (VALUES
	(1,N'alpha-new',1), (3,N'gamma',1)
) [Source]
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
;

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Code],
	[t1].[Field]
FROM
	[ComplexPropertyTarget] [t1]
ORDER BY
	[t1].[Id]

