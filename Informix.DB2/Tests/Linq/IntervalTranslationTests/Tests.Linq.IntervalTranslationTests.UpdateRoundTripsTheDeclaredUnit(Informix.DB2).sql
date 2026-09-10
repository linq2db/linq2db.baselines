-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 4567

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
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1

-- Informix.DB2 Informix
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 19260
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 4567
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	DurationRow t1
SET
	InSeconds = @InSeconds,
	InTicks = @InTicks,
	Undeclared = @Undeclared,
	UndeclaredSeconds = @UndeclaredSeconds
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1

-- Informix.DB2 Informix
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 45670000000

UPDATE
	DurationRow r
SET
	InSeconds = @InSeconds,
	InTicks = @InTicks
WHERE
	r.Id = 1

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.InSeconds,
	t1.InTicks,
	t1.Undeclared,
	t1.UndeclaredSeconds
FROM
	DurationRow t1

