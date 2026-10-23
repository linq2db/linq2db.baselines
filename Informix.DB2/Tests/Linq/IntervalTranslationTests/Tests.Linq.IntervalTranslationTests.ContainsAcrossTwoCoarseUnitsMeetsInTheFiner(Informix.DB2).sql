-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InDays BigInt(8) -- Int64
SET     @InDays = 2
DECLARE @InMilliseconds BigInt(8) -- Int64
SET     @InMilliseconds = 172800000
DECLARE @InNanoseconds BigInt(8) -- Int64
SET     @InNanoseconds = 172800000000000

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
SELECT
	r.Id
FROM
	UnitSpreadRow r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			UnitSpreadRow x
		WHERE
			r.InDays * 86400000 = x.InMilliseconds
	)

-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	UnitSpreadRow r
WHERE
	EXISTS(
		SELECT
			*
		FROM
			UnitSpreadRow x
		WHERE
			r.InMilliseconds = x.InDays * 86400000
	)

