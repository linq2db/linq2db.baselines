﻿BeforeExecute
-- SqlServer.2008
DECLARE @true_value VarChar -- AnsiString
SET     @true_value = N'Y'
DECLARE @true_value_1 VarChar -- AnsiString
SET     @true_value_1 = N'Y'

SELECT
	[t1].[Enum]
FROM
	[ValueConversion] [t1]
		INNER JOIN (
			SELECT
				*
			FROM
				[ValueConversion] [t2]
			WHERE
				[t2].[BoolValue] = @true_value
		) [t2_1] ON [t1].[BoolValue] = @true_value_1

