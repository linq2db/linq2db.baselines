-- SqlServer.SA.MS SqlServer.2019
INSERT INTO [Issue5975Row]
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

-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[Issue5975Row] [t1]

