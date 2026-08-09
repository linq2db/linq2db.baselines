-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 183845

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

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	[r].[InSeconds] / 3600,
	Fix([r].[InSeconds] / 3600) MOD 24,
	[r].[InTicks] / 600000000
FROM
	[DurationRow] [r]

