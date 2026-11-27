-- Informix.DB2 Informix
DECLARE @s VarChar(1) -- String
SET     @s = 'e'
DECLARE @Value Integer(4) -- Int32
SET     @Value = 7
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 3

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	CharIndex(@s::NVarChar(1), Substr(p.LastName, 1, @Value::Int), @Value_1::Int) - 1 = 4 AND
	p.PersonID = 2

