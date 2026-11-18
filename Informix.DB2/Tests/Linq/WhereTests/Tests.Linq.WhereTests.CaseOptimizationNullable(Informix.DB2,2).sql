-- Informix.DB2 Informix
DECLARE @filterValue Integer(4) -- Int32
SET     @filterValue = 2

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	x.Id = @filterValue

