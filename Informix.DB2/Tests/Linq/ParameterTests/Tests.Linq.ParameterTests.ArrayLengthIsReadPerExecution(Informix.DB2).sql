-- Informix.DB2 Informix
DECLARE @arr Integer(4) -- Int32
SET     @arr = 1

SELECT FIRST 2
	t.Id,
	t."Value"
FROM
	ArrayLengthTable t
WHERE
	t.Id = @arr

-- Informix.DB2 Informix
DECLARE @arr Integer(4) -- Int32
SET     @arr = 2

SELECT FIRST 2
	t.Id,
	t."Value"
FROM
	ArrayLengthTable t
WHERE
	t.Id = @arr

