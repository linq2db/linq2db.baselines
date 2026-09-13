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
DECLARE @PlainValue BigInt(8) -- Int64
SET     @PlainValue = 1800

SELECT FIRST 2
	r.Undeclared,
	r.UndeclaredSeconds,
	r.Undeclared + r.Undeclared,
	r.InSeconds + r.InSeconds,
	r.UndeclaredSeconds + @PlainValue::BigInt
FROM
	DurationRow r

