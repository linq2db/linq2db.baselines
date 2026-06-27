-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @EventCode NVarChar(11) -- String
SET     @EventCode = 'TicketChild'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'shared'

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

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @EventCode NVarChar(12) -- String
SET     @EventCode = 'TicketChild2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'shared'
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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[EventCode],
	[t].[Id],
	[t].[TicketChildCode]
FROM
	[Tickets] [t]
WHERE
	([t].[EventCode] <> 'TicketChild2' OR [t].[EventCode] IS NULL) AND
	[t].[TicketChildCode] = 'shared'

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[EventCode],
	[t].[Id],
	[t].[TicketChild2Code],
	[t].[Price]
FROM
	[Tickets] [t]
WHERE
	[t].[EventCode] = 'TicketChild2' AND [t].[TicketChild2Code] = 'shared'

