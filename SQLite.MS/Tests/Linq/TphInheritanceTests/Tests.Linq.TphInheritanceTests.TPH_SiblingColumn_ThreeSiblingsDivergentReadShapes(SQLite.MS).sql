-- SQLite.MS SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'D1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Payload  -- Int64
SET     @Payload = 10

INSERT INTO [TphDupCol]
(
	[Kind],
	[Id],
	[Payload]
)
VALUES
(
	@Kind,
	@Id,
	@Payload
)

-- SQLite.MS SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'D2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Payload  -- Int32
SET     @Payload = 20

INSERT INTO [TphDupCol]
(
	[Kind],
	[Id],
	[Payload]
)
VALUES
(
	@Kind,
	@Id,
	@Payload
)

-- SQLite.MS SQLite
DECLARE @Kind NVarChar(2) -- String
SET     @Kind = 'D3'
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Payload  -- Int32
SET     @Payload = 30

INSERT INTO [TphDupCol]
(
	[Kind],
	[Id],
	[Payload]
)
VALUES
(
	@Kind,
	@Id,
	@Payload
)

-- SQLite.MS SQLite
SELECT
	[t1].[Kind],
	[t1].[Id],
	[t1].[Payload],
	[t1].[Payload]
FROM
	[TphDupCol] [t1]
ORDER BY
	[t1].[Id]

