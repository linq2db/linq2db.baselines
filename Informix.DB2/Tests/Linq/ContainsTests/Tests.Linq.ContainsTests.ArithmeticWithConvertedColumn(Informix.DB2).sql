-- Informix.DB2 Informix
DECLARE @operand Integer(4) -- Int32
SET     @operand = 2

SELECT FIRST 2
	SUM(g_1.Cents) * @operand::Int
FROM
	ConvertedAmount g_1
GROUP BY
	g_1."Group"

-- Informix.DB2 Informix
DECLARE @operand Integer(4) -- Int32
SET     @operand = 2

SELECT FIRST 2
	SUM(g_1.Cents) / @operand::Int
FROM
	ConvertedAmount g_1
GROUP BY
	g_1."Group"

-- Informix.DB2 Informix
DECLARE @operand Integer(4) -- Int32
SET     @operand = 200

SELECT FIRST 2
	SUM(g_1.Cents) + @operand::Int
FROM
	ConvertedAmount g_1
GROUP BY
	g_1."Group"

-- Informix.DB2 Informix
DECLARE @operand Integer(4) -- Int32
SET     @operand = 2

SELECT FIRST 2
	x.Cents * @operand::Int
FROM
	ConvertedAmount x
WHERE
	x.Id = 1

-- Informix.DB2 Informix
DECLARE @operand Integer(4) -- Int32
SET     @operand = 200

SELECT FIRST 2
	x.Cents + @operand::Int
FROM
	ConvertedAmount x
WHERE
	x.Id = 1

