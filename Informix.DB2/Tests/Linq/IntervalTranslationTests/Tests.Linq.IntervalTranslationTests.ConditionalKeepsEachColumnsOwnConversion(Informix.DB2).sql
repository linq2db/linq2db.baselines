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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 1800

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
SELECT
	r.Id,
	r.Undeclared,
	r.UndeclaredSeconds
FROM
	DurationRow r
ORDER BY
	r.Id

