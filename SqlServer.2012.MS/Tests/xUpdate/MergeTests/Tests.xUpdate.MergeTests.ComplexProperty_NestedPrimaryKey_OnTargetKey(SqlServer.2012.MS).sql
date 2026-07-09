-- SqlServer.2012.MS SqlServer.2012
DECLARE @Code NVarChar(50) -- String
SET     @Code = N'first'
DECLARE @Key_Value Int -- Int32
SET     @Key_Value = 1

INSERT INTO [NestedKeyTarget]
(
	[Code],
	[Id]
)
VALUES
(
	@Code,
	@Key_Value
)

-- SqlServer.2012.MS SqlServer.2012
DECLARE @Code NVarChar(50) -- String
SET     @Code = N'skipped'
DECLARE @Key_Value Int -- Int32
SET     @Key_Value = 2

INSERT INTO [NestedKeyTarget]
(
	[Code],
	[Id]
)
VALUES
(
	@Code,
	@Key_Value
)

-- SqlServer.2012.MS SqlServer.2012
MERGE INTO [NestedKeyTarget] [Target]
USING (VALUES
	(1,N'first-updated')
) [Source]
(
	[Key_Value],
	[Code]
)
ON ([Target].[Id] = [Source].[Key_Value])

WHEN MATCHED THEN
UPDATE
SET
	[Code] = [Source].[Code]
;

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[Code],
	[t1].[Id]
FROM
	[NestedKeyTarget] [t1]
ORDER BY
	[t1].[Id]

