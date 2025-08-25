BeforeExecute
-- SqlServer.2008 (asynchronously)

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
			CAST(5 AS TinyInt) as [Byte],
			CAST(5 AS TinyInt) as [Byte_1],
			CAST('0b8afe27-481c-442e-b8cf-729ddfeece29' AS UniqueIdentifier) as [Guid],
			CAST('0b8afe27-481c-442e-b8cf-729ddfeece30' AS UniqueIdentifier) as [GuidN],
			CAST(N'ENUM1_VALUE' AS NChar(11)) as [Enum],
			CAST(N'ENUM2_VALUE' AS NChar(11)) as [EnumN],
			CAST(1 AS Bit) as [Bool],
			CAST(0 AS Bit) as [BoolN]
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

