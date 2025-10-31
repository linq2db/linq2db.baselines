-- Informix.DB2 Informix
DECLARE @value Integer(4) -- Int32
SET     @value = 1

SELECT
	@value::Int
FROM table(set{1})

