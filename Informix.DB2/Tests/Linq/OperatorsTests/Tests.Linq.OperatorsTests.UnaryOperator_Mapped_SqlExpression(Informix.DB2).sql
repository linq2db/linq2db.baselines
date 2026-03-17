-- Informix.DB2 Informix
DECLARE @value Integer(4) -- Int32
SET     @value = 6

SELECT
	r.Id,
	r.Field,
	r.FieldN,
	r.FieldClass
FROM
	OperatorTable r
WHERE
	3 * r.Field = @value AND 3 * r.FieldN = @value AND
	3 * r.FieldClass = @value

