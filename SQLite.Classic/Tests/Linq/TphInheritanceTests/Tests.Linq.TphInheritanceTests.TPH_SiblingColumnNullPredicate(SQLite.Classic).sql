-- SQLite.Classic SQLite
DECLARE @EventCode NVarChar(11) -- String
SET     @EventCode = 'TicketChild'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'C1'

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

-- SQLite.Classic SQLite
DECLARE @EventCode NVarChar(12) -- String
SET     @EventCode = 'TicketChild2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Code NVarChar -- String
SET     @Code = NULL
DECLARE @Price  -- Int32
SET     @Price = 0

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

-- SQLite.Classic SQLite
DECLARE @EventCode NVarChar(12) -- String
SET     @EventCode = 'TicketChild2'
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'C3'
DECLARE @Price  -- Int32
SET     @Price = 99

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

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[Tickets] [t]
WHERE
	[t].[EventCode] = 'TicketChild2' AND [t].[TicketChild2Code] IS NULL

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[Tickets] [t]
WHERE
	[t].[EventCode] = 'TicketChild2' AND [t].[TicketChild2Code] IS NOT NULL

