-- SQLite.MS SQLite
DECLARE @EventCode NVarChar(11) -- String
SET     @EventCode = 'TicketChild'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'A-code'

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
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'B-code'
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

SELECT
	[t].[TicketChildCode]
FROM
	[Tickets] [t]
WHERE
	[t].[EventCode] <> 'TicketChild2' OR [t].[EventCode] IS NULL
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[t].[TicketChild2Code]
FROM
	[Tickets] [t]
WHERE
	[t].[EventCode] = 'TicketChild2'
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[t].[TicketChild2Code],
	[t].[Price]
FROM
	[Tickets] [t]
WHERE
	[t].[EventCode] = 'TicketChild2'
LIMIT 2

