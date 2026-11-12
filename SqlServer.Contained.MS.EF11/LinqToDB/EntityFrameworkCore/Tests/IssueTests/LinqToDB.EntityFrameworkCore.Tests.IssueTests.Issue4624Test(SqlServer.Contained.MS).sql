Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (Size = 4000), @p3='?' (Size = 4000), @p4='?' (Size = 4000), @p5='?' (Size = 4000), @p6='?' (DbType = Boolean), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime2), @p9='?' (DbType = DateTime2), @p10='?' (Size = 4000), @p11='?' (DbType = Boolean)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [Issue4624Items] ([AclNameId], [Capacity], [CfAllowField], [CfAllowValue], [CfDisallowField], [CfDisallowValue], [CfDriven], [CreditGroupId], [DateFrom], [DateTo], [Name], [SendCustomFields])
OUTPUT INSERTED.[Id]
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);


Parameters:
@p12='?' (DbType = Int32), @p13='?' (DbType = Int32), @p14='?' (DbType = Int32), @p15='?' (DbType = Int32), @p16='?' (DbType = Int32), @p17='?' (DbType = Int32), @p18='?' (Size = 4000), @p19='?' (DbType = Int32), @p20='?' (DbType = Int32), @p21='?' (Size = 4000), @p22='?' (Size = 4000), @p23='?' (Size = 4000), @p24='?' (DbType = Int32), @p25='?' (Size = 4000), @p26='?' (DbType = Int32), @p27='?' (DbType = Int32), @p28='?' (Size = 4000), @p29='?' (Size = 4000), @p30='?' (Size = 4000), @p31='?' (DbType = Int32)

SET NOCOUNT ON;
MERGE [Issue4624Entry] USING (
VALUES (@p12, @p13, @p14, 0),
(@p15, @p16, @p17, 1)) AS i ([AclItemId], [EntriesCount], [TicketNumberId], _Position) ON 1=0
WHEN NOT MATCHED THEN
INSERT ([AclItemId], [EntriesCount], [TicketNumberId])
VALUES (i.[AclItemId], i.[EntriesCount], i.[TicketNumberId])
OUTPUT INSERTED.[Id], i._Position;
MERGE [Issue4624ItemTicketDates] USING (
VALUES (@p18, @p19, @p20, @p21, @p22, @p23, @p24, 0),
(@p25, @p26, @p27, @p28, @p29, @p30, @p31, 1)) AS i ([DisplayInfo], [EntryCount], [ItemId], [Message], [MessageBackcolor], [MessageForecolor], [TicketDateId], _Position) ON 1=0
WHEN NOT MATCHED THEN
INSERT ([DisplayInfo], [EntryCount], [ItemId], [Message], [MessageBackcolor], [MessageForecolor], [TicketDateId])
VALUES (i.[DisplayInfo], i.[EntryCount], i.[ItemId], i.[Message], i.[MessageBackcolor], i.[MessageForecolor], i.[TicketDateId])
OUTPUT INSERTED.[Id], i._Position;




-- SqlServer.2025
SELECT
	[m_1].[Id],
	[d].[EntryCount]
FROM
	(
		SELECT DISTINCT
			[a_Item].[Id]
		FROM
			[Issue4624ItemTicketDates] [p]
				INNER JOIN [Issue4624Items] [a_Item] ON [p].[ItemId] = [a_Item].[Id]
		WHERE
			[p].[Id] < 1000
	) [m_1]
		INNER JOIN [Issue4624ItemTicketDates] [d] ON [m_1].[Id] = [d].[ItemId]



-- SqlServer.2025
SELECT
	[p_1].[Id],
	[p_1].[AclItemName],
	Coalesce((
		SELECT
			SUM([a_Entries].[EntriesCount])
		FROM
			[Issue4624Entry] [a_Entries]
		WHERE
			[p_1].[Id] = [a_Entries].[AclItemId]
	), 0)
FROM
	(
		SELECT DISTINCT
			[a_Item].[Id],
			[a_Item].[Name] as [AclItemName]
		FROM
			[Issue4624ItemTicketDates] [p]
				INNER JOIN [Issue4624Items] [a_Item] ON [p].[ItemId] = [a_Item].[Id]
		WHERE
			[p].[Id] < 1000
	) [p_1]



