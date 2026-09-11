-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 4567

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

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 4567
DECLARE @extra BigInt -- Int64
SET     @extra = 18000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 4567

MERGE INTO [DurationRow] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[InSeconds] = @InSeconds,
		[InTicks] = @extra,
		[Undeclared] = @Undeclared,
		[UndeclaredSeconds] = @UndeclaredSeconds
WHEN NOT MATCHED THEN
	INSERT
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
		@extra,
		@Undeclared,
		@UndeclaredSeconds
	);

-- SqlServer.SA SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

