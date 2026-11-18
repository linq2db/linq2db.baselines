-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Doubled Integer(4) -- Int32
SET     @Doubled = 20
DECLARE @Tripled Integer(4) -- Int32
SET     @Tripled = 30
DECLARE @Plain Integer(4) -- Int32
SET     @Plain = 10

INSERT INTO DivergentConversionRow
(
	Id,
	Doubled,
	Tripled,
	Plain
)
VALUES
(
	@Id,
	@Doubled,
	@Tripled,
	@Plain
)

-- Informix.DB2 Informix
DECLARE @PlainValue Integer(4) -- Int32
SET     @PlainValue = 10

SELECT FIRST 2
	r.Doubled,
	r.Tripled,
	r.Plain,
	r.Doubled + r.Doubled,
	r.Plain + r.Plain,
	r.Doubled + @PlainValue::Int
FROM
	DivergentConversionRow r

-- Informix.DB2 Informix
DECLARE @Doubled Integer(4) -- Int32
SET     @Doubled = 20

SELECT
	COUNT(*)
FROM
	DivergentConversionRow r
WHERE
	r.Doubled = @Doubled

