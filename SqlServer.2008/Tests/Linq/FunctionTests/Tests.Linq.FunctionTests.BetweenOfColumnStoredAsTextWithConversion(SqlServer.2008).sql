-- SqlServer.2008
DECLARE @low VarChar(36) -- AnsiString
SET     @low = N'00000000-0000-0000-0000-000000000001'
DECLARE @high VarChar(36) -- AnsiString
SET     @high = N'00000000-0000-0000-0000-000000000002'

SELECT
	[r].[Id],
	CASE
		WHEN [r].[Value] BETWEEN @low AND @high THEN 1
		ELSE 0
	END
FROM
	[BetweenTextRow] [r]
WHERE
	[r].[Value] NOT BETWEEN @high AND @high

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[BetweenTextRow] [t1]

