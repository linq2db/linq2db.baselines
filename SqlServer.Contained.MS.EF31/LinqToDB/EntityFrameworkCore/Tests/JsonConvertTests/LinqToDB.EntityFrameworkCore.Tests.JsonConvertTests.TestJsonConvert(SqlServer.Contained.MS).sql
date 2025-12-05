-- SqlServer.2019

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


-- SqlServer.2019

SELECT TOP (1)
	[p].[Id],
	[p].[NameLocalized_JSON],
	[p].[CrashEnum],
	[p].[GuidColumn],
	JSON_VALUE([p].[JsonColumn], N'some')
FROM
	[EventScheduleItem] [p]
WHERE
	[p].[Id] < 10



