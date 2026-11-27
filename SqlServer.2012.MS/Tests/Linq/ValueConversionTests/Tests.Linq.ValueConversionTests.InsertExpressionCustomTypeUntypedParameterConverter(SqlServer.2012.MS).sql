-- SqlServer.2012.MS SqlServer.2012
INSERT INTO [CustomFieldRecord]
(
	[Id],
	[Field1]
)
VALUES
(
	1,
	NULL
)

-- SqlServer.2012.MS SqlServer.2012
INSERT INTO [CustomFieldRecord]
(
	[Id],
	[Field1]
)
VALUES
(
	2,
	NULL
)

-- SqlServer.2012.MS SqlServer.2012
INSERT INTO [CustomFieldRecord]
(
	[Id],
	[Field1]
)
VALUES
(
	3,
	N'test'
)

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[CustomFieldRecord] [t1]
ORDER BY
	[t1].[Id]

