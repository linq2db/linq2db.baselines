-- SqlServer.Contained SqlServer.2025
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

-- SqlServer.Contained SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[ArrayLengthTable] [t1]

