Parameters:
@p0='?', @p1='?', @p2='?', @p3='?', @p4='?', @p5='?', @p6='?', @p7='?', @p8='?', @p9='?', @p10='?' (Size = 9), @p11='?'

INSERT INTO "Issue4624Items" ("AclNameId", "Capacity", "CfAllowField", "CfAllowValue", "CfDisallowField", "CfDisallowValue", "CfDriven", "CreditGroupId", "DateFrom", "DateTo", "Name", "SendCustomFields")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11);
SELECT "Id"
FROM "Issue4624Items"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p12='?', @p13='?', @p14='?'

INSERT INTO "Issue4624Entry" ("AclItemId", "EntriesCount", "TicketNumberId")
VALUES (@p12, @p13, @p14);
SELECT "Id"
FROM "Issue4624Entry"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p0='?', @p1='?', @p2='?'

INSERT INTO "Issue4624Entry" ("AclItemId", "EntriesCount", "TicketNumberId")
VALUES (@p0, @p1, @p2);
SELECT "Id"
FROM "Issue4624Entry"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p0='?', @p1='?', @p2='?', @p3='?', @p4='?', @p5='?', @p6='?'

INSERT INTO "Issue4624ItemTicketDates" ("DisplayInfo", "EntryCount", "ItemId", "Message", "MessageBackcolor", "MessageForecolor", "TicketDateId")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6);
SELECT "Id"
FROM "Issue4624ItemTicketDates"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();


Parameters:
@p0='?', @p1='?', @p2='?', @p3='?', @p4='?', @p5='?', @p6='?'

INSERT INTO "Issue4624ItemTicketDates" ("DisplayInfo", "EntryCount", "ItemId", "Message", "MessageBackcolor", "MessageForecolor", "TicketDateId")
VALUES (@p0, @p1, @p2, @p3, @p4, @p5, @p6);
SELECT "Id"
FROM "Issue4624ItemTicketDates"
WHERE changes() = 1 AND "rowid" = last_insert_rowid();




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



