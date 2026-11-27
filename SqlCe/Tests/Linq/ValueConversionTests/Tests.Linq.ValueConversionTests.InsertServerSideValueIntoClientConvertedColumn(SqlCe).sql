-- SqlCe
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

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[ShiftedDateRow] [t1]

