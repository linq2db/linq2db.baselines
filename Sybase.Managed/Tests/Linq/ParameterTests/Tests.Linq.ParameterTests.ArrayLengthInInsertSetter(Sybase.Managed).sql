-- Sybase.Managed Sybase
DECLARE @arr Integer -- Int32
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

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[ArrayLengthTable] [t1]

