-- SqlServer.2022

DELETE [t1]
FROM
	[TestMergeIdentity] [t1]

-- SqlServer.2022
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

-- SqlServer.2022

SELECT
	MAX([t1].[Id])
FROM
	[TestMergeIdentity] [t1]

-- SqlServer.2022

MERGE INTO [TestMergeIdentity] [Target]
USING (VALUES
	(10)
) [Source]
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
;

-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

