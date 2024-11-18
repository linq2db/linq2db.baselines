Parameters:
@p0='?' (Size = 1) (DbType = Byte), @p1='?' (DbType = Guid), @p2='?' (Size = 4000), @p3='?' (Size = 4000)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [EventScheduleItem] ([CrashEnum], [GuidColumn], [JsonColumn], [NameLocalized_JSON])
OUTPUT INSERTED.[Id]
VALUES (@p0, @p1, @p2, @p3);


