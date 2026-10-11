-- Informix.DB2 Informix
DECLARE @min Integer(2) -- Int32
SET     @min = 0

SELECT
	@min::Int
FROM table(set{1})

-- Informix.DB2 Informix
DECLARE @max Integer(2) -- Int32
SET     @max = 65535

SELECT
	@max::Int
FROM table(set{1})

