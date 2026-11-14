-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int64
SET     @value = 4567
DECLARE @value_1  -- Int64
SET     @value_1 = 45670000000

UPDATE
	[DurationRow] [t1]
SET
	[t1].[InSeconds] = @value,
	[t1].[InTicks] = @value_1
WHERE
	[t1].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int64
SET     @value = 4567
DECLARE @value_1  -- Int64
SET     @value_1 = 45670000000
DECLARE @value_2  -- Int64
SET     @value_2 = 45670000000
DECLARE @value_3  -- Int64
SET     @value_3 = 4567

INSERT INTO [DurationRow]
(
	[Id],
	[InSeconds],
	[InTicks],
	[Undeclared],
	[UndeclaredSeconds]
)
VALUES
(
	1,
	@value,
	@value_1,
	@value_2,
	@value_3
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int64
SET     @value = 19260
DECLARE @value_1  -- Int64
SET     @value_1 = 192600000000

UPDATE
	[DurationRow] [t1]
SET
	[t1].[InSeconds] = @value,
	[t1].[InTicks] = @value_1
WHERE
	[t1].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

