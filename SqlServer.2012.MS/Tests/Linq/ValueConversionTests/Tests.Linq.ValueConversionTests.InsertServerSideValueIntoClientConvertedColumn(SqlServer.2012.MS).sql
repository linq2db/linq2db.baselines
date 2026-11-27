-- SqlServer.2012.MS SqlServer.2012
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

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (2)
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]

