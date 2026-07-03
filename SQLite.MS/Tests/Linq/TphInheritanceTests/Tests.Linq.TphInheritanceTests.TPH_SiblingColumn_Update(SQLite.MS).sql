-- SQLite.MS SQLite
DECLARE @EventCode NVarChar(11) -- String
SET     @EventCode = 'TicketChild'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'A-old'

INSERT INTO [Tickets]
(
	[EventCode],
	[Id],
	[TicketChildCode]
)
VALUES
(
	@EventCode,
	@Id,
	@Code
)

-- SQLite.MS SQLite
DECLARE @EventCode NVarChar(12) -- String
SET     @EventCode = 'TicketChild2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'B-old'
DECLARE @Price  -- Int32
SET     @Price = 5

INSERT INTO [Tickets]
(
	[EventCode],
	[Id],
	[TicketChild2Code],
	[Price]
)
VALUES
(
	@EventCode,
	@Id,
	@Code,
	@Price
)

-- SQLite.MS SQLite
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'B-new'

UPDATE
	[Tickets]
SET
	[TicketChild2Code] = @Code
WHERE
	[Tickets].[EventCode] = 'TicketChild2' AND [Tickets].[Id] = 2

-- SQLite.MS SQLite

SELECT
	[t1].[EventCode],
	[t1].[Id],
	[t1].[TicketChildCode]
FROM
	[Tickets] [t1]
WHERE
	[t1].[EventCode] <> 'TicketChild2' OR [t1].[EventCode] IS NULL
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[t1].[EventCode],
	[t1].[Id],
	[t1].[TicketChild2Code],
	[t1].[Price]
FROM
	[Tickets] [t1]
WHERE
	[t1].[EventCode] = 'TicketChild2'
LIMIT 2

