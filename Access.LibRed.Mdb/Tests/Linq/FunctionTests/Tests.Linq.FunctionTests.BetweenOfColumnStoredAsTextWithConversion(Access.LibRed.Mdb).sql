-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @low VarChar(36) -- AnsiString
SET     @low = '00000000-0000-0000-0000-000000000001'
DECLARE @high VarChar(36) -- AnsiString
SET     @high = '00000000-0000-0000-0000-000000000002'

SELECT
	[r].[Id],
	CASE
		WHEN [r].[Value] BETWEEN CVar(@low) AND CVar(@high) THEN True
		ELSE False
	END
FROM
	[BetweenTextRow] [r]
WHERE
	[r].[Value] NOT BETWEEN @high AND @high

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[BetweenTextRow] [t1]

