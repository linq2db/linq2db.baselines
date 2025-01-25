BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @str NVarChar(4000) -- String
SET     @str = N'Some1'

SELECT
	[row2].[ID2]
FROM
	[TABLE2] [row2]
WHERE
	[row2].[TABLE1ID] IN (
		SELECT
			[row1].[ID1]
		FROM
			[TABLE1] [row1]
		WHERE
			[row1].[NAME1] = @str
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @str NVarChar(4000) -- String
SET     @str = N'Some2'

SELECT
	[row2].[ID2]
FROM
	[TABLE2] [row2]
WHERE
	[row2].[TABLE1ID] IN (
		SELECT
			[row1].[ID1]
		FROM
			[TABLE1] [row1]
		WHERE
			[row1].[NAME1] = @str
	)

