﻿BeforeExecute
-- SqlServer.2019

DELETE [t1]
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
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

BeforeExecute
-- SqlServer.2019

SELECT
	MAX([_].[Id])
FROM
	[TestMergeIdentity] [_]

BeforeExecute
-- SqlServer.2019

MERGE INTO [TestMergeIdentity] [Target]
USING (VALUES
	(22), (23)
) [Source]
(
	[source_Field]
)
ON (([Target].[Field] = [Source].[source_Field] OR [Target].[Field] IS NULL AND [Source].[source_Field] IS NULL))

WHEN NOT MATCHED THEN
INSERT
(
	[Field]
)
VALUES
(
	[Source].[source_Field]
)
;

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

