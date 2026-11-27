-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[CustomFieldRecord] [t1]
ORDER BY
	[t1].[Id]

