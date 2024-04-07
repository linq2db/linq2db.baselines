﻿BeforeExecute
-- SqlServer.2017

DELETE [t1]
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- SqlServer.2017
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
-- SqlServer.2017

SELECT
	MAX([_].[Id])
FROM
	[TestMergeIdentity] [_]

BeforeExecute
-- SqlServer.2017

MERGE INTO [TestMergeIdentity] [Target]
USING (VALUES
	(10)
) [Source]
(
	[source_Field]
)
ON ([Target].[Field] IS NULL)

WHEN NOT MATCHED THEN
INSERT
(
	[Field]
)
VALUES
(
	[Source].[source_Field]
)

WHEN MATCHED THEN
UPDATE
SET
	[Field] = [Source].[source_Field]
;

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

