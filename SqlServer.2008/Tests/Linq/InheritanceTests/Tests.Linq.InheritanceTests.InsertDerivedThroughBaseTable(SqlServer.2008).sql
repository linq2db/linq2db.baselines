-- SqlServer.2008
INSERT INTO [InheritanceFilter]
(
	[Id],
	[Code],
	[Child1Field]
)
VALUES
(
	1,
	1,
	11
)

-- SqlServer.2008
SELECT TOP (2)
	[t1].[Id],
	[t1].[Code],
	[t1].[Child1Field]
FROM
	[InheritanceFilter] [t1]
WHERE
	[t1].[Code] IN (12, 11, 1)

