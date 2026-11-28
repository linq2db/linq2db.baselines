-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 5400

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
DECLARE @Ticks BigInt(8) -- Int64
SET     @Ticks = 3000000000

SELECT FIRST 2
	((r.InSeconds * 10000000 + r.InTicks)::BigInt + @Ticks::BigInt)::BigInt,
	(@Ticks::BigInt + (r.InSeconds * 10000000 + r.InTicks)::BigInt)::BigInt,
	((r.InSeconds * 10000000 + r.InTicks)::BigInt - @Ticks::BigInt)::BigInt
FROM
	DurationRow r

-- Informix.DB2 Informix
DECLARE @Ticks BigInt(8) -- Int64
SET     @Ticks = 108000000000

SELECT
	COUNT(*)
FROM
	DurationRow r
WHERE
	(r.InSeconds * 10000000 + r.InTicks)::BigInt = @Ticks

