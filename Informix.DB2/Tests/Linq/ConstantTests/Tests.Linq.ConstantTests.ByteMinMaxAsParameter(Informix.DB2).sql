-- Informix.DB2 Informix
DECLARE @min SmallInt(2) -- Int16
SET     @min = 0

SELECT
	@min::SmallInt
FROM table(set{1})

-- Informix.DB2 Informix
DECLARE @max SmallInt(2) -- Int16
SET     @max = 255

SELECT
	@max::SmallInt
FROM table(set{1})

