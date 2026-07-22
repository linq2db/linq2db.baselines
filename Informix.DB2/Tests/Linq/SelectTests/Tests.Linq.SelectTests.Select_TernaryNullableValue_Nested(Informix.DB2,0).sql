-- Informix.DB2 Informix
DECLARE @value Integer(4) -- Int32
SET     @value = 0

SELECT
	CASE
		WHEN @value::Int < 2 THEN @value::Int
		ELSE 2 + @value::Int
	END
FROM table(set{1})

