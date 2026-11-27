-- SqlCe
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

-- SqlCe
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

-- SqlCe
INSERT INTO [CustomFieldRecord]
(
	[Id],
	[Field1]
)
VALUES
(
	3,
	'test'
)

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[Field1]
FROM
	[CustomFieldRecord] [t1]
ORDER BY
	[t1].[Id]

