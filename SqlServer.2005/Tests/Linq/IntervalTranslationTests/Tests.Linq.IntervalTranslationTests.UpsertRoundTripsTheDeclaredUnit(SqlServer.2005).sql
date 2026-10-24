-- SqlServer.2005
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 4567
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[DurationRow]
SET
	[InSeconds] = @InSeconds,
	[InTicks] = @InTicks,
	[Undeclared] = @Undeclared,
	[UndeclaredSeconds] = @UndeclaredSeconds
FROM
	[DurationRow] [t1]
WHERE
	[t1].[Id] = @Id

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
		@Id,
		@InSeconds,
		@InTicks,
		@Undeclared,
		@UndeclaredSeconds
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
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 19260
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 192600000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 19260
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[DurationRow]
SET
	[InSeconds] = @InSeconds,
	[InTicks] = @InTicks,
	[Undeclared] = @Undeclared,
	[UndeclaredSeconds] = @UndeclaredSeconds
FROM
	[DurationRow] [t1]
WHERE
	[t1].[Id] = @Id

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
		@Id,
		@InSeconds,
		@InTicks,
		@Undeclared,
		@UndeclaredSeconds
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

