-- SqlServer.2019

DELETE [t1]
FROM
	[TestMergeIdentity] [t1]

-- SqlServer.2019
DECLARE @Field Int -- Int32
SET     @Field = NULL

INSERT INTO [TestMergeIdentity]
(
	[Field]
)
VALUES
(
	@Field
)

-- SqlServer.2019

SELECT
	MAX([t1].[Id])
FROM
	[TestMergeIdentity] [t1]

-- SqlServer.2019

MERGE INTO [TestMergeIdentity] [Target]
USING (VALUES
	(22), (23)
) [Source]
(
	[Field]
)
ON ([Target].[Field] = [Source].[Field] OR [Target].[Field] IS NULL AND [Source].[Field] IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	[Field]
)
VALUES
(
	[Source].[Field]
)
;

-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

