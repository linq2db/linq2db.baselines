-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 1
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 12345670
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 12345670
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 1

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
	Mod(r.InTicks / 10000, 1000)::Int,
	Mod(r.InTicks / 10, 1000)::Int
FROM
	DurationRow r

