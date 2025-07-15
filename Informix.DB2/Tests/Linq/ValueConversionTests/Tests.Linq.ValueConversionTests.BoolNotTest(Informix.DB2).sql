BeforeExecute
-- Informix.DB2 Informix
DECLARE @false_value VarChar(1) -- String
SET     @false_value = 'N'

SELECT
	t.Id,
	t.Value1,
	t.Value2,
	t.BoolValue
FROM
	ValueConversion t
WHERE
	t.BoolValue = @false_value

