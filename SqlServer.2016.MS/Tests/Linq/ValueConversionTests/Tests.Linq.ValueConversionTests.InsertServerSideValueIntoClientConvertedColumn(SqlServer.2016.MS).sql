-- SqlServer.2016.MS SqlServer.2016
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

-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	[t1].[Id],
	[t1].[Plain],
	[t1].[Date]
FROM
	[Issue5975Row] [t1]

