-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 183845

INSERT INTO DurationRow
(
	Id,
	InSeconds,
	InTicks,
	Undeclared,
	UndeclaredSeconds
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- Informix.DB2 Informix
SELECT FIRST 2
	((r.InSeconds::BigInt * 10000000) / 864000000000)::Int,
	Mod((r.InSeconds::BigInt * 10000000) / 36000000000, 24)::Int,
	Mod((r.InSeconds::BigInt * 10000000) / 600000000, 60)::Int,
	Mod((r.InSeconds::BigInt * 10000000) / 10000000, 60)::Int
FROM
	DurationRow r

