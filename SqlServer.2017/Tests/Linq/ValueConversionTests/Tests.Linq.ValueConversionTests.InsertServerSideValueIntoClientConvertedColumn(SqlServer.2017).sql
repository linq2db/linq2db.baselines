-- SqlServer.2017
INSERT INTO [ShiftedDateRow]
(
	[Id],
	[Plain],
	[Date]
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- SqlServer.2017
SELECT TOP (2)
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]

