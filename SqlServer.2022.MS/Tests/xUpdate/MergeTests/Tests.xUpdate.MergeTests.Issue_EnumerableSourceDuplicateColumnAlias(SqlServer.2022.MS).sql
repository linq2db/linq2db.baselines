BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

MERGE INTO [MyChildClass] [Target]
USING (VALUES
	(1,10), (2,20), (3,30), (4,40)
) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[Id],
	[Source].[Value_1]
)
;

