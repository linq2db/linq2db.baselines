-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [SomeTable]
(
	[Id],
	[ClassProp],
	[Interface]
)
VALUES
(
	1,
	1,
	0
)

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (2)
	[t1].[Id],
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

