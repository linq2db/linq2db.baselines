-- SqlServer.CS.MS SqlServer.2025
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

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]

