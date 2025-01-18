BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{0b8afe27-481c-442e-b8cf-729ddfeece29}'
DECLARE @value UniqueIdentifier -- Guid
SET     @value = '{0b8afe27-481c-442e-b8cf-729ddfeece30}'

SELECT
	[t1].[Id],
	[t1].[Byte],
	[t1].[Byte_1],
	[t1].[Guid],
	[t1].[GuidN],
	[t1].[Enum],
	[t1].[EnumN],
	[t1].[Bool],
	[t1].[BoolN]
FROM
	(
		SELECT
			[r].[Id],
			5 as [Byte],
			5 as [Byte_1],
			? as [Guid],
			? as [GuidN],
			'ENUM1_VALUE' as [Enum],
			'ENUM2_VALUE' as [EnumN],
			CBool(True) as [Bool],
			CBool(False) as [BoolN]
		FROM
			[Issue3360Table1] [r]
		WHERE
			[r].[Id] = 2
		UNION ALL
		SELECT
			[r_1].[Id],
			[r_1].[Byte],
			[r_1].[ByteN] as [Byte_1],
			[r_1].[Guid],
			[r_1].[GuidN],
			[r_1].[Enum],
			[r_1].[EnumN],
			[r_1].[Bool],
			[r_1].[BoolN]
		FROM
			[Issue3360Table1] [r_1]
		WHERE
			[r_1].[Id] = 4
	) [t1]
ORDER BY
	[t1].[Id]

