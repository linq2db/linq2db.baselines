﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

DELETE [t1]
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Max([_].[Id])
FROM
	[TestMergeIdentity] [_]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
	[Target].[Field] = [Source].[Field]
;

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

