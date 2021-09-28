﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

DELETE [t1]
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017
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
-- SqlServer.Contained SqlServer.2017

SELECT
	Max([_].[Id])
FROM
	[TestMergeIdentity] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

MERGE INTO [TestMergeIdentity] [Target]
USING (VALUES
	(22), (23)
) [Source]
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
;

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

