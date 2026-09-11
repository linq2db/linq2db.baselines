-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InDays BigInt(8) -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds BigInt(8) -- Int64
SET     @InMilliseconds = 3723456
DECLARE @InNanoseconds BigInt(8) -- Int64
SET     @InNanoseconds = 7000123400

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
	t1.Id,
	t1.InDays,
	t1.InMilliseconds,
	t1.InNanoseconds
FROM
	UnitSpreadRow t1

-- Informix.DB2 Informix
SELECT FIRST 2
	(r.InDays * 24)::Float,
	Mod(r.InMilliseconds / 1000, 60)::Int
FROM
	UnitSpreadRow r

