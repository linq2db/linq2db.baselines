-- Access.Ace.Odbc AccessODBC
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{00000000-0000-0000-0000-000000000000}'
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{00000000-0000-0000-0000-000000000000}'

SELECT
	[t1].[Id],
	[t1].[Byte],
	[t1].[Byte_1],
	[t1].[Guid],
	[t1].[Guid_1],
	[t1].[Enum],
	[t1].[EnumN],
	[t1].[Bool],
	[t1].[Bool_1]
FROM
	(
		SELECT
			[r].[Id],
			IIF(False, 0, NULL) as [Byte],
			IIF(False, 0, NULL) as [Byte_1],
			IIF(False, ?, NULL) as [Guid],
			IIF(False, ?, NULL) as [Guid_1],
			IIF(False, 'ENUM1_VALUE', NULL) as [Enum],
			IIF(False, 'ENUM2_VALUE', NULL) as [EnumN],
			IIF(False, False, NULL) as [Bool],
			IIF(False, False, NULL) as [Bool_1]
		FROM
			[Issue3360Table1] [r]
		WHERE
			[r].[Id] = 1
		UNION ALL
		SELECT
			[r_1].[Id],
			[r_1].[Byte],
			[r_1].[ByteN] as [Byte_1],
			[r_1].[Guid],
			[r_1].[GuidN] as [Guid_1],
			[r_1].[Enum],
			[r_1].[EnumN],
			[r_1].[Bool],
			[r_1].[BoolN] as [Bool_1]
		FROM
			[Issue3360Table1] [r_1]
		WHERE
			[r_1].[Id] = 2
	) [t1]
ORDER BY
	[t1].[Id]

