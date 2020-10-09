BeforeExecute
-- SqlServer.2016 SqlServer.2012

DELETE [t1]
FROM
	[TestMergeIdentity] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
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
-- SqlServer.2016 SqlServer.2012

SELECT 
	Max([_].[Id])
FROM
	[TestMergeIdentity] [_]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

MERGE INTO [TestMergeIdentity] [Target]
USING (	VALUES
		(22),
		(23)) [Source]
(
	[Field]
)
ON (([Target].[Field] IS NULL AND [Source].[Field] IS NULL OR [Target].[Field] = [Source].[Field]))

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
-- SqlServer.2016 SqlServer.2012

SELECT 
	[t1].[Id], 
	[t1].[Field]
FROM
	[TestMergeIdentity] [t1]
ORDER BY
	[t1].[Id]

