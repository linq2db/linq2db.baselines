Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?', @p3='?', @p4='?', @p5='?', @p6='?' (DbType = Boolean), @p7='?' (DbType = Int32), @p8='?' (DbType = DateTime), @p9='?' (DbType = DateTime), @p10='?' (Size = 9), @p11='?' (DbType = Boolean)

INSERT INTO "Issue4624Items" ("AclNameId", "Capacity", "CfAllowField", "CfAllowValue", "CfDisallowField", "CfDisallowValue", "CfDriven", "CreditGroupId", "DateFrom", "DateTo", "Name", "SendCustomFields")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11)
RETURNING "Id";


Parameters:
@p12='?' (DbType = Int32), @p13='?' (DbType = Int32), @p14='?' (DbType = Int32)

INSERT INTO "Issue4624Entry" ("AclItemId", "EntriesCount", "TicketNumberId")
VALUES (@p12, @p13, @p14)
RETURNING "Id";


Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int32)

INSERT INTO "Issue4624Entry" ("AclItemId", "EntriesCount", "TicketNumberId")
VALUES (@p0, @p1, @p2)
RETURNING "Id";


Parameters:
@p0='?', @p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p3='?', @p4='?', @p5='?', @p6='?' (DbType = Int32)

INSERT INTO "Issue4624ItemTicketDates" ("DisplayInfo", "EntryCount", "ItemId", "Message", "MessageBackcolor", "MessageForecolor", "TicketDateId")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6)
RETURNING "Id";


Parameters:
@p0='?', @p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p3='?', @p4='?', @p5='?', @p6='?' (DbType = Int32)

INSERT INTO "Issue4624ItemTicketDates" ("DisplayInfo", "EntryCount", "ItemId", "Message", "MessageBackcolor", "MessageForecolor", "TicketDateId")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6)
RETURNING "Id";




-- SQLite.MS SQLite
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



-- SQLite.MS SQLite
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



