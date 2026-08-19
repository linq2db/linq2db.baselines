-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = -90000
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = -900000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = -90000

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
	r.InSeconds::Float / 3600
FROM
	DurationRow r

