-- SqlServer.Contained SqlServer.2019
DECLARE @str NVarChar(4000) -- String
SET     @str = N'zz'

UPDATE
	[AlignedSetData]
SET
	      [AlignedSetData].[Value] = @str

-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[AlignedSetData] [t1]

