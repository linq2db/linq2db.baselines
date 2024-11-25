--  SqlServer.2022

DELETE [t1]
FROM
	[EventScheduleItem] [t1]



Parameters:
@p0='?' (Size = 1) (DbType = Byte), @p1='?' (DbType = Guid), @p2='?' (Size = 4000), @p3='?' (Size = 4000)

SET NOCOUNT ON;
INSERT INTO [EventScheduleItem] ([CrashEnum], [GuidColumn], [JsonColumn], [NameLocalized_JSON])
VALUES (@p0, @p1, @p2, @p3);
SELECT [Id]
FROM [EventScheduleItem]
WHERE @@ROWCOUNT = 1 AND [Id] = scope_identity();


SELECT [e].[Id], [e].[CrashEnum], [e].[GuidColumn], [e].[JsonColumn], [e].[NameLocalized_JSON]
FROM [EventScheduleItem] AS [e]


--  SqlServer.2022
DECLARE @path NVarChar(4000) -- String
SET     @path = N'some'

SELECT TOP (1)
	[t1].[Id],
	[t1].[NameLocalized],
	[t1].[CrashEnum],
	[t1].[GuidColumn],
	JSON_VALUE([t1].[JsonColumn], @path)
FROM
	(VALUES
		(1,N'{"English":"English","German":"German","Slovak":"Slovak"}',0,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL)
	) [t1]([Id], [NameLocalized], [CrashEnum], [GuidColumn], [JsonColumn])
WHERE
	[t1].[Id] < 10



