-- Informix.DB2 Informix
DECLARE @name Integer(4) -- Int32
SET     @name = 4

SELECT
	t.Id,
	t."Value",
	t.Money
FROM
	ParameterCastUnderCastTable t
WHERE
	t."Value" = To_Char(@name::Int)

-- Informix.DB2 Informix
DECLARE @name Integer(4) -- Int32
SET     @name = 4

SELECT
	t.Id,
	t."Value",
	t.Money
FROM
	ParameterCastUnderCastTable t
WHERE
	t.Money = @name::Decimal

