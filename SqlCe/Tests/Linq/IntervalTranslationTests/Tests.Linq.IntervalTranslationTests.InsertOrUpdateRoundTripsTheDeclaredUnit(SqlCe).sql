-- SqlCe
DECLARE @value BigInt -- Int64
SET     @value = 4567
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 45670000000

UPDATE
	[DurationRow]
SET
	[InSeconds] = @value,
	[InTicks] = @value_1
WHERE
	[DurationRow].[Id] = 1

-- SqlCe
DECLARE @value BigInt -- Int64
SET     @value = 4567
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 45670000000
DECLARE @value_2 BigInt -- Int64
SET     @value_2 = 45670000000
DECLARE @value_3 BigInt -- Int64
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

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

-- SqlCe
DECLARE @value BigInt -- Int64
SET     @value = 19260
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 192600000000

UPDATE
	[DurationRow]
SET
	[InSeconds] = @value,
	[InTicks] = @value_1
WHERE
	[DurationRow].[Id] = 1

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

