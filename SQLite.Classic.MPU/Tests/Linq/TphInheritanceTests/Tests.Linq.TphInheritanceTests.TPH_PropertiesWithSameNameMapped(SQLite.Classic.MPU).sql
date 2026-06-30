-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @EventCode NVarChar(11) -- String
SET     @EventCode = 'TicketChild'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Code1'

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
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Code2'
DECLARE @Price  -- Int32
SET     @Price = 123

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
	[t1].[EventCode],
	[t1].[Id],
	[t1].[Price],
	[t1].[TicketChild2Code],
	[t1].[TicketChildCode]
FROM
	[Tickets] [t1]
ORDER BY
	[t1].[Id]

