BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [TestMergeIdentity]
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Field Integer -- Int32
SET     @Field = NULL

INSERT INTO [TestMergeIdentity]
(
	[Field]
)
VALUES
(
	@Field
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	MAX([t1].[Id])
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [TestMergeIdentity] [Target]
USING (
	SELECT 22 AS [source_Field]
	UNION ALL
	SELECT 23) [Source]
(
	[source_Field]
)
ON ([Target].[Field] = [Source].[source_Field] OR [Target].[Field] IS NULL AND [Source].[source_Field] IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	[Field]
)
VALUES
(
	[Source].[source_Field]
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

