-- SqlServer.2022.MS SqlServer.2022
DECLARE @arr Int -- Int32
SET     @arr = 1

SELECT TOP (2)
	[t].[Id],
	[t].[Value]
FROM
	[ArrayLengthTable] [t]
WHERE
	[t].[Id] = @arr

-- SqlServer.2022.MS SqlServer.2022
DECLARE @arr Int -- Int32
SET     @arr = 2

SELECT TOP (2)
	[t].[Id],
	[t].[Value]
FROM
	[ArrayLengthTable] [t]
WHERE
	[t].[Id] = @arr

