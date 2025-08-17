BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DELETE FROM [TestMergeIdentity]
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
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
-- Sybase.Managed Sybase (asynchronously)

SELECT
	MAX([t1].[Id])
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

MERGE INTO [TestMergeIdentity] [Target]
USING (
	SELECT 10 AS [Field]) [Source]
(
	[Field]
)
ON ([Target].[Field] IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	[Field]
)
VALUES
(
	[Source].[Field]
)

WHEN MATCHED THEN
UPDATE
SET
	[Field] = [Source].[Field]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

