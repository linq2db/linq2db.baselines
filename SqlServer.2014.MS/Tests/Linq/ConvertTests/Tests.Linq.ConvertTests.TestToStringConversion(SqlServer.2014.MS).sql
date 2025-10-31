-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	CAST([x].[Prop_bool] AS NVarChar(1)),
	CAST([x].[Prop_byte] AS NVarChar(3)),
	CAST([x].[Prop_char] AS NVarChar(4000)),
	CAST([x].[Prop_decimal] AS NVarChar(31)),
	CAST([x].[Prop_double] AS NVarChar(22)),
	CAST([x].[Prop_short] AS NVarChar(6)),
	CAST([x].[Prop_int] AS NVarChar(11)),
	CAST([x].[Prop_long] AS NVarChar(20)),
	CAST([x].[Prop_sbyte] AS NVarChar(Max)),
	CAST([x].[Prop_float] AS NVarChar(13)),
	CAST([x].[Prop_ushort] AS NVarChar(Max)),
	CAST([x].[Prop_uint] AS NVarChar(Max)),
	CAST([x].[Prop_ulong] AS NVarChar(Max)),
	Lower(CAST([x].[Prop_Guid] AS Char(36))),
	CAST([x].[Prop_DateTime] AS NVarChar(27)),
	CAST([x].[NullableProp_bool] AS NVarChar(1)),
	CAST([x].[NullableProp_byte] AS NVarChar(3)),
	CAST([x].[NullableProp_char] AS NVarChar(4000)),
	CAST([x].[NullableProp_decimal] AS NVarChar(31)),
	CAST([x].[NullableProp_double] AS NVarChar(22)),
	CAST([x].[NullableProp_short] AS NVarChar(6)),
	CAST([x].[NullableProp_int] AS NVarChar(11)),
	CAST([x].[NullableProp_long] AS NVarChar(20)),
	CAST([x].[NullableProp_sbyte] AS NVarChar(Max)),
	CAST([x].[NullableProp_float] AS NVarChar(13)),
	CAST([x].[NullableProp_ushort] AS NVarChar(Max)),
	CAST([x].[NullableProp_uint] AS NVarChar(Max)),
	CAST([x].[NullableProp_ulong] AS NVarChar(Max)),
	Lower(CAST([x].[NullableProp_Guid] AS Char(36))),
	CAST([x].[NullableProp_DateTime] AS NVarChar(27))
FROM
	[ToStringConvertibleTypes] [x]

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	IIF([x].[Prop_bool] = 1, N'1', N'0'),
	[x].[Prop_byte],
	[x].[Prop_char],
	[x].[Prop_decimal],
	[x].[Prop_double],
	[x].[Prop_short],
	[x].[Prop_int],
	[x].[Prop_long],
	[x].[Prop_sbyte],
	[x].[Prop_float],
	[x].[Prop_ushort],
	[x].[Prop_uint],
	[x].[Prop_ulong],
	Lower(CAST([x].[Prop_Guid] AS Char(36))),
	[x].[Prop_DateTime],
	CASE
		WHEN [x].[NullableProp_bool] IS NULL THEN N''
		WHEN [x].[NullableProp_bool] = 1 THEN N'1'
		ELSE N'0'
	END,
	[x].[NullableProp_byte],
	[x].[NullableProp_char],
	[x].[NullableProp_decimal],
	[x].[NullableProp_double],
	[x].[NullableProp_short],
	[x].[NullableProp_int],
	[x].[NullableProp_long],
	[x].[NullableProp_sbyte],
	[x].[NullableProp_float],
	[x].[NullableProp_ushort],
	[x].[NullableProp_uint],
	[x].[NullableProp_ulong],
	Lower(CAST([x].[NullableProp_Guid] AS Char(36))),
	[x].[NullableProp_DateTime]
FROM
	[ToStringConvertibleTypes] [x]

