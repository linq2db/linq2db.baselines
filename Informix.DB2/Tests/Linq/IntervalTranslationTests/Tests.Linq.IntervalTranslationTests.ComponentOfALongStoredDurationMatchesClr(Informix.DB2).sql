-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 3000000005
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 30000000050000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 30000000050000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 3000000005

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
	(r.InSeconds / 86400)::Int,
	Mod(r.InSeconds / 3600, 24)::Int,
	Mod(r.InSeconds / 60, 60)::Int,
	Mod(r.InSeconds, 60)::Int
FROM
	DurationRow r

-- Informix.DB2 Informix
DECLARE @Seconds Integer(4) -- Int32
SET     @Seconds = 5

SELECT
	r.Id
FROM
	DurationRow r
WHERE
	Mod(r.InSeconds, 60)::Int = @Seconds

