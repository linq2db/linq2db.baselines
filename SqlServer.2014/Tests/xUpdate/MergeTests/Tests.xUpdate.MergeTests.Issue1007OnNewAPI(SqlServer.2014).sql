﻿BeforeExecute
-- SqlServer.2014

DELETE [t1]
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- SqlServer.2014
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

BeforeExecute
-- SqlServer.2014

SELECT
	MAX([t1].[Id])
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- SqlServer.2014

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

BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

