-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 10800
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 108000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 10800

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
	r.InSeconds::Float / 3600,
	r.InTicks::Float / 36000000000
FROM
	DurationRow r

