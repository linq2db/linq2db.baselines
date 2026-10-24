-- SqlServer.2012.MS SqlServer.2012
DECLARE @arr Int -- Int32
SET     @arr = 3

INSERT INTO [ArrayLengthTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	@arr
)

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[ArrayLengthTable] [t1]

