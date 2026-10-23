-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 900
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 900

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 2700
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 2700

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
	r.Id
FROM
	DurationRow r
WHERE
	r.InSeconds IN (900, 2700)
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	DurationRow r
WHERE
	r.InTicks IN (9000000000, 27000000000)
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	r.InSeconds IN (900, 2700)
FROM
	DurationRow r
ORDER BY
	r.Id

-- Informix.DB2 Informix
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 1800

SELECT
	EXISTS(
		SELECT
			*
		FROM
			DurationRow r
		WHERE
			@InSeconds::BigInt = r.InSeconds
	)
FROM table(set{1})

-- Informix.DB2 Informix
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 54000000000

SELECT
	EXISTS(
		SELECT
			*
		FROM
			DurationRow r
		WHERE
			@InTicks::BigInt = r.InTicks
	)
FROM table(set{1})

