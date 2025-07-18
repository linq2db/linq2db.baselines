﻿-- SqlServer.2017

DELETE [t1]
FROM
	[EventScheduleItem] [t1]



Parameters:
@p0='?' (Size = 1) (DbType = Byte), @p1='?' (DbType = Guid), @p2='?' (Size = 4000), @p3='?' (Size = 4000)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [EventScheduleItem] ([CrashEnum], [GuidColumn], [JsonColumn], [NameLocalized_JSON])
OUTPUT INSERTED.[Id]
VALUES (@p0, @p1, @p2, @p3);


-- SqlServer.2017

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



