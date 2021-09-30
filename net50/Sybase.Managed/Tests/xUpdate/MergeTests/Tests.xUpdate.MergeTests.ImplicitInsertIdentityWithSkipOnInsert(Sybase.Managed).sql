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
	Max([_].[Id])
FROM
	[TestMergeIdentity] [_]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [TestMergeIdentity] [Target]
USING (	SELECT 22
	UNION ALL
	SELECT 23) [Source]
(
	[Field]
)
ON (([Target].[Field] = [Source].[Field] OR [Target].[Field] IS NULL AND [Source].[Field] IS NULL))

WHEN NOT MATCHED THEN
INSERT
(
	[Field]
)
VALUES
(
	[Source].[Field]
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

