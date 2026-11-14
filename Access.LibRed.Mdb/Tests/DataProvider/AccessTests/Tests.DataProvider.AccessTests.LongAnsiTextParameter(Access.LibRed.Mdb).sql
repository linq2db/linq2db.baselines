-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(1000) -- String
SET     @Value = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
-- value above truncated for logging

INSERT INTO [LongAnsiTextTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(1000) -- String
SET     @Value = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
-- value above truncated for logging

INSERT INTO [LongAnsiTextTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Id],
	[r].[Value]
FROM
	[LongAnsiTextTable] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value NVarChar(1000) -- String
SET     @value = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
-- value above truncated for logging

SELECT
	[r].[Id]
FROM
	[LongAnsiTextTable] [r]
WHERE
	[r].[Value] = @value

