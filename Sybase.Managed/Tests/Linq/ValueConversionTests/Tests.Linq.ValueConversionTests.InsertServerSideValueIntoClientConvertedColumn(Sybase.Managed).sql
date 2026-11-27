-- Sybase.Managed Sybase
INSERT INTO [ShiftedDateRow]
(
	[Id],
	[Plain],
	[Date]
)
VALUES
(
	1,
	GetDate(),
	GetDate()
)

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]

