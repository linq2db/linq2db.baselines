BeforeExecute
-- SqlServer.2019 (asynchronously)

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

BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[t1].[Id],
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

