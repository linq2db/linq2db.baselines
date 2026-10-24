-- SqlServer.2016
DECLARE @arr Int -- Int32
SET     @arr = 1

SELECT TOP (2)
	[t].[Id],
	[t].[Value]
FROM
	[ArrayLengthTable] [t]
WHERE
	[t].[Id] = @arr

-- SqlServer.2016
DECLARE @arr Int -- Int32
SET     @arr = 2

SELECT TOP (2)
	[t].[Id],
	[t].[Value]
FROM
	[ArrayLengthTable] [t]
WHERE
	[t].[Id] = @arr

