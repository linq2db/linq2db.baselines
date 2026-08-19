-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InDays BigInt(8) -- Int64
SET     @InDays = 0
DECLARE @InMilliseconds BigInt(8) -- Int64
SET     @InMilliseconds = 7000
DECLARE @InNanoseconds BigInt(8) -- Int64
SET     @InNanoseconds = 7000000000

INSERT INTO UnitSpreadRow
(
	Id,
	InDays,
	InMilliseconds,
	InNanoseconds
)
VALUES
(
	@Id,
	@InDays,
	@InMilliseconds,
	@InNanoseconds
)

-- Informix.DB2 Informix
SELECT FIRST 2
	r.InNanoseconds
FROM
	UnitSpreadRow r

