-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Female'

SELECT
	[r].[Id]
FROM
	[ConvertedGenderRow] [r]
WHERE
	[r].[Gender] = @Value

