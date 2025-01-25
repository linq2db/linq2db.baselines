BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ToStringConvertibleTypes]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[ToStringConvertibleTypes]', N'U') IS NULL)
	CREATE TABLE [ToStringConvertibleTypes]
	(
		[Prop_bool]             Bit              NOT NULL,
		[Prop_byte]             TinyInt          NOT NULL,
		[Prop_char]             NChar(1)         NOT NULL,
		[Prop_decimal]          Decimal          NOT NULL,
		[Prop_double]           Float            NOT NULL,
		[Prop_short]            SmallInt         NOT NULL,
		[Prop_int]              Int              NOT NULL,
		[Prop_long]             BigInt           NOT NULL,
		[Prop_sbyte]            TinyInt          NOT NULL,
		[Prop_float]            Real             NOT NULL,
		[Prop_ushort]           Int              NOT NULL,
		[Prop_uint]             BigInt           NOT NULL,
		[Prop_ulong]            Decimal          NOT NULL,
		[Prop_Guid]             UniqueIdentifier NOT NULL,
		[NullableProp_bool]     Bit                  NULL,
		[NullableProp_byte]     TinyInt              NULL,
		[NullableProp_char]     NChar(1)             NULL,
		[NullableProp_decimal]  Decimal              NULL,
		[NullableProp_double]   Float                NULL,
		[NullableProp_short]    SmallInt             NULL,
		[NullableProp_int]      Int                  NULL,
		[NullableProp_long]     BigInt               NULL,
		[NullableProp_sbyte]    TinyInt              NULL,
		[NullableProp_float]    Real                 NULL,
		[NullableProp_ushort]   Int                  NULL,
		[NullableProp_uint]     BigInt               NULL,
		[NullableProp_ulong]    Decimal              NULL,
		[NullableProp_Guid]     UniqueIdentifier     NULL,
		[Prop_DateTime]         DateTime2        NOT NULL,
		[NullableProp_DateTime] DateTime2            NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [ToStringConvertibleTypes]
(
	[Prop_bool],
	[Prop_byte],
	[Prop_char],
	[Prop_decimal],
	[Prop_double],
	[Prop_short],
	[Prop_int],
	[Prop_long],
	[Prop_sbyte],
	[Prop_float],
	[Prop_ushort],
	[Prop_uint],
	[Prop_ulong],
	[Prop_Guid],
	[NullableProp_bool],
	[NullableProp_byte],
	[NullableProp_char],
	[NullableProp_decimal],
	[NullableProp_double],
	[NullableProp_short],
	[NullableProp_int],
	[NullableProp_long],
	[NullableProp_sbyte],
	[NullableProp_float],
	[NullableProp_ushort],
	[NullableProp_uint],
	[NullableProp_ulong],
	[NullableProp_Guid],
	[Prop_DateTime],
	[NullableProp_DateTime]
)
VALUES
(1,1,N'c',1.2,1.2,32767,2147483647,9223372036854775807,127,1.20000005,65535,4294967295,4294967295,'00000000-0000-0000-0000-000000000000',1,1,N'c',1.2,1.2,32767,2147483647,9223372036854775807,127,1.20000005,65535,4294967295,4294967295,'00000000-0000-0000-0000-000000000000',DATETIME2FROMPARTS(2022, 3, 25, 13, 40, 33, 0, 7),DATETIME2FROMPARTS(2022, 3, 25, 13, 40, 33, 0, 7))

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
	CAST([x].[Prop_Guid] AS NVarChar(36)),
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
	CAST([x].[NullableProp_Guid] AS NVarChar(36)),
	CAST([x].[NullableProp_DateTime] AS NVarChar(27))
FROM
	[ToStringConvertibleTypes] [x]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[x].[Prop_bool],
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
	[x].[NullableProp_bool],
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

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [ToStringConvertibleTypes]

