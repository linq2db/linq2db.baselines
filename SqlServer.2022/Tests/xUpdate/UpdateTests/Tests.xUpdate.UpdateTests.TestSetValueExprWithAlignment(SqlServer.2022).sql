-- SqlServer.2022
DECLARE @str NVarChar(4000) -- String
SET     @str = N'zz'

UPDATE
	[AlignedSetData]
SET
	      [AlignedSetData].[Value] = @str

-- SqlServer.2022
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[AlignedSetData] [t1]

