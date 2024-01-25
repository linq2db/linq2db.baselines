BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [ToStringConvertibleTypes]

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

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
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	Convert(NVarChar(1), [x].[Prop_bool]),
	Convert(NVarChar(3), [x].[Prop_byte]),
	Convert(NVarChar(4000), [x].[Prop_char]),
	Convert(NVarChar(31), [x].[Prop_decimal]),
	Convert(NVarChar(22), [x].[Prop_double]),
	Convert(NVarChar(6), [x].[Prop_short]),
	Convert(NVarChar(11), [x].[Prop_int]),
	Convert(NVarChar(20), [x].[Prop_long]),
	Convert(NVarChar(4000), [x].[Prop_sbyte]),
	Convert(NVarChar(13), [x].[Prop_float]),
	Convert(NVarChar(4000), [x].[Prop_ushort]),
	Convert(NVarChar(4000), [x].[Prop_uint]),
	Convert(NVarChar(4000), [x].[Prop_ulong]),
	[x].[Prop_Guid],
	Convert(NVarChar(4000), [x].[Prop_DateTime]),
	Convert(NVarChar(1), [x].[NullableProp_bool]),
	Convert(NVarChar(3), [x].[NullableProp_byte]),
	Convert(NVarChar(4000), [x].[NullableProp_char]),
	Convert(NVarChar(31), [x].[NullableProp_decimal]),
	Convert(NVarChar(22), [x].[NullableProp_double]),
	Convert(NVarChar(6), [x].[NullableProp_short]),
	Convert(NVarChar(11), [x].[NullableProp_int]),
	Convert(NVarChar(20), [x].[NullableProp_long]),
	Convert(NVarChar(4000), [x].[NullableProp_sbyte]),
	Convert(NVarChar(13), [x].[NullableProp_float]),
	Convert(NVarChar(4000), [x].[NullableProp_ushort]),
	Convert(NVarChar(4000), [x].[NullableProp_uint]),
	Convert(NVarChar(4000), [x].[NullableProp_ulong]),
	Convert(NVarChar(4000), [x].[NullableProp_Guid]),
	Convert(NVarChar(4000), [x].[NullableProp_DateTime])
FROM
	[ToStringConvertibleTypes] [x]

BeforeExecute
-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
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
-- SqlServer.2016

DROP TABLE IF EXISTS [ToStringConvertibleTypes]

