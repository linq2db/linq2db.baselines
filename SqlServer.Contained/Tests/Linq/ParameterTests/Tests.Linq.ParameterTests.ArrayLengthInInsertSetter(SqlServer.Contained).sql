-- SqlServer.Contained SqlServer.2019
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

-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[ArrayLengthTable] [t1]

