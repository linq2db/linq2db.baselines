-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @true_value VarChar -- AnsiString
SET     @true_value = 'Y'

SELECT
	[t1].[Enum]
FROM
	[ValueConversion] [t1],
	(
		SELECT
			1 as [c1]
		FROM
			[ValueConversion] [t2]
		WHERE
			[t2].[BoolValue] = @true_value
	) [t2_1]
WHERE
	[t1].[BoolValue] = @true_value

