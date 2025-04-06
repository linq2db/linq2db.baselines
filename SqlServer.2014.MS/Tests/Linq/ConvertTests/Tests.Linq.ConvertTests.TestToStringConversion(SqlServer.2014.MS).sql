BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	CAST([x].[Prop_bool] AS NVarChar(Max)),
	CAST([x].[Prop_byte] AS NVarChar(Max)),
	CAST([x].[Prop_char] AS NVarChar(Max)),
	CAST([x].[Prop_decimal] AS NVarChar(Max)),
	CAST([x].[Prop_double] AS NVarChar(Max)),
	CAST([x].[Prop_short] AS NVarChar(Max)),
	CAST([x].[Prop_int] AS NVarChar(Max)),
	CAST([x].[Prop_long] AS NVarChar(Max)),
	CAST([x].[Prop_sbyte] AS NVarChar(Max)),
	CAST([x].[Prop_float] AS NVarChar(Max)),
	CAST([x].[Prop_ushort] AS NVarChar(Max)),
	CAST([x].[Prop_uint] AS NVarChar(Max)),
	CAST([x].[Prop_ulong] AS NVarChar(Max)),
	CAST([x].[Prop_Guid] AS NVarChar(Max)),
	CAST([x].[Prop_DateTime] AS NVarChar(Max)),
	CAST([x].[NullableProp_bool] AS NVarChar(Max)),
	CAST([x].[NullableProp_byte] AS NVarChar(Max)),
	CAST([x].[NullableProp_char] AS NVarChar(Max)),
	CAST([x].[NullableProp_decimal] AS NVarChar(Max)),
	CAST([x].[NullableProp_double] AS NVarChar(Max)),
	CAST([x].[NullableProp_short] AS NVarChar(Max)),
	CAST([x].[NullableProp_int] AS NVarChar(Max)),
	CAST([x].[NullableProp_long] AS NVarChar(Max)),
	CAST([x].[NullableProp_sbyte] AS NVarChar(Max)),
	CAST([x].[NullableProp_float] AS NVarChar(Max)),
	CAST([x].[NullableProp_ushort] AS NVarChar(Max)),
	CAST([x].[NullableProp_uint] AS NVarChar(Max)),
	CAST([x].[NullableProp_ulong] AS NVarChar(Max)),
	CAST([x].[NullableProp_Guid] AS NVarChar(Max)),
	CAST([x].[NullableProp_DateTime] AS NVarChar(Max))
FROM
	[ToStringConvertibleTypes] [x]

BeforeExecute
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
	[x].[Prop_Guid],
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
	[x].[NullableProp_Guid],
	[x].[NullableProp_DateTime]
FROM
	[ToStringConvertibleTypes] [x]

