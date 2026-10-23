-- SqlServer.2005
DECLARE @value BigInt -- Int64
SET     @value = 4567
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 45670000000
DECLARE @value_2 BigInt -- Int64
SET     @value_2 = 45670000000
DECLARE @value_3 BigInt -- Int64
SET     @value_3 = 4567

UPDATE
	[DurationRow]
SET
	[InSeconds] = @value,
	[InTicks] = @value_1
FROM
	[DurationRow] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
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
END

-- SqlServer.2005
SELECT TOP (2)
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

-- SqlServer.2005
DECLARE @value BigInt -- Int64
SET     @value = 19260
DECLARE @value_1 BigInt -- Int64
SET     @value_1 = 192600000000
DECLARE @value_2 BigInt -- Int64
SET     @value_2 = 192600000000
DECLARE @value_3 BigInt -- Int64
SET     @value_3 = 19260

UPDATE
	[DurationRow]
SET
	[InSeconds] = @value,
	[InTicks] = @value_1
FROM
	[DurationRow] [t1]
WHERE
	[t1].[Id] = 1

IF @@ROWCOUNT = 0
BEGIN
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
END

-- SqlServer.2005
SELECT TOP (2)
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

