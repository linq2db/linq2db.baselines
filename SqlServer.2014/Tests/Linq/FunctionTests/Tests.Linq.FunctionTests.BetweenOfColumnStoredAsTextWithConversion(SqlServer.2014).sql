-- SqlServer.2014
DECLARE @low VarChar(36) -- AnsiString
SET     @low = N'00000000-0000-0000-0000-000000000001'
DECLARE @high VarChar(36) -- AnsiString
SET     @high = N'00000000-0000-0000-0000-000000000002'

SELECT
	[r].[Id],
	IIF([r].[Value] BETWEEN @low AND @high, 1, 0)
FROM
	[BetweenTextRow] [r]
WHERE
	[r].[Value] NOT BETWEEN @high AND @high

-- SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[BetweenTextRow] [t1]

