-- SqlServer.SA.MS SqlServer.2019

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

