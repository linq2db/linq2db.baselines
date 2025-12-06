-- Sybase.Managed Sybase

DROP TABLE [AllTypeCreateTest]

-- Sybase.Managed Sybase

CREATE TABLE [AllTypeCreateTest]
(
	[ID]                    Int             IDENTITY NOT NULL,
	[bigintDataType]        BigInt                       NULL,
	[uBigintDataType]       Decimal                      NULL,
	[numericDataType]       DECIMAL(18, 10)              NULL,
	[bitDataType]           Bit                      NOT NULL,
	[smallintDataType]      SmallInt                     NULL,
	[uSmallintDataType]     Int                          NULL,
	[decimalDataType]       DECIMAL(18, 10)              NULL,
	[moneyDataType]         DECIMAL(18, 10)              NULL,
	[smallmoneyDataType]    DECIMAL(18, 10)              NULL,
	[intDataType]           Int                          NULL,
	[uIntDataType]          BigInt                       NULL,
	[tinyintDataType]       TinyInt                      NULL,
	[floatDataType]         Float                        NULL,
	[realDataType]          Real                         NULL,
	[datetimeDataType]      DateTime                     NULL,
	[smalldatetimeDataType] DateTime                     NULL,
	[dateDataType]          DateTime                     NULL,
	[timeDataType]          Time                         NULL,
	[charDataType]          NChar(1)                     NULL,
	[char20DataType]        NVarChar(255)                NULL,
	[varcharDataType]       NVarChar(255)                NULL,
	[textDataType]          NVarChar(255)                NULL,
	[ncharDataType]         NChar(1)                     NULL,
	[nvarcharDataType]      NVarChar(255)                NULL,
	[ntextDataType]         NVarChar(255)                NULL,
	[binaryDataType]        VarBinary                    NULL,
	[varbinaryDataType]     VarBinary                    NULL,
	[imageDataType]         VarBinary                    NULL,
	[timestampDataType]     VarBinary                    NULL,

	CONSTRAINT [PK_AllTypeCreateTest] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[bigintDataType],
	[t1].[uBigintDataType],
	[t1].[numericDataType],
	[t1].[bitDataType],
	[t1].[smallintDataType],
	[t1].[uSmallintDataType],
	[t1].[decimalDataType],
	[t1].[moneyDataType],
	[t1].[smallmoneyDataType],
	[t1].[intDataType],
	[t1].[uIntDataType],
	[t1].[tinyintDataType],
	[t1].[floatDataType],
	[t1].[realDataType],
	[t1].[datetimeDataType],
	[t1].[smalldatetimeDataType],
	[t1].[dateDataType],
	[t1].[timeDataType],
	[t1].[charDataType],
	[t1].[char20DataType],
	[t1].[varcharDataType],
	[t1].[textDataType],
	[t1].[ncharDataType],
	[t1].[nvarcharDataType],
	[t1].[ntextDataType],
	[t1].[binaryDataType],
	[t1].[varbinaryDataType],
	[t1].[imageDataType],
	[t1].[timestampDataType]
FROM
	[AllTypeCreateTest] [t1]

-- Sybase.Managed Sybase

DROP TABLE [AllTypeCreateTest]

