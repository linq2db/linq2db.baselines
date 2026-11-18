-- Informix.DB2 Informix
DECLARE @min BigInt(4) -- Int64
SET     @min = 0

SELECT
	@min::BigInt
FROM table(set{1})

-- Informix.DB2 Informix
DECLARE @max BigInt(4) -- Int64
SET     @max = 4294967295

SELECT
	@max::BigInt
FROM table(set{1})

