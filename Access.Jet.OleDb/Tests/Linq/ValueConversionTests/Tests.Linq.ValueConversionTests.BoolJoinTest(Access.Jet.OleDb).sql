BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @true_value VarChar(1) -- AnsiString
SET     @true_value = 'Y'
DECLARE @true_value_1 VarChar(1) -- AnsiString
SET     @true_value_1 = 'Y'

SELECT
	[t1].[Enum]
FROM
	[ValueConversion] [t1],
	(
		SELECT
			*
		FROM
			[ValueConversion] [t2]
		WHERE
			[t2].[BoolValue] = @true_value
	) [t2_1]
WHERE
	[t1].[BoolValue] = @true_value_1

