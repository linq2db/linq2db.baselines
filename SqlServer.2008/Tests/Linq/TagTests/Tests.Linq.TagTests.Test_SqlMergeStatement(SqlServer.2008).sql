-- SqlServer.2008

/* My Test */
MERGE INTO [TestMerge1] [Target]
USING (
	SELECT
		[t1].[Id],
		[t1].[Field1],
		[t1].[Field2],
		[t1].[Field4]
	FROM
		[TestMerge2] [t1]
) [Source]
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Field1],
	[Field2],
	[Field4]
)
VALUES
(
	[Source].[Id],
	[Source].[Field1],
	[Source].[Field2],
	[Source].[Field4]
)
;

