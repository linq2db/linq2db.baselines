﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AllTypeCreateTest]', N'U') IS NOT NULL)
	DROP TABLE [AllTypeCreateTest]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [AllTypeCreateTest]
(
	[ID]                       Int               NOT NULL IDENTITY,
	[bigintDataType]           BigInt                NULL,
	[numericDataType]          Decimal               NULL,
	[bitDataType]              Bit                   NULL,
	[smallintDataType]         SmallInt              NULL,
	[decimalDataType]          Decimal               NULL,
	[smallmoneyDataType]       SmallMoney            NULL,
	[intDataType]              Int                   NULL,
	[tinyintDataType]          TinyInt               NULL,
	[moneyDataType]            Money                 NULL,
	[floatDataType]            Float                 NULL,
	[realDataType]             Real                  NULL,
	[datetimeDataType]         DateTime              NULL,
	[smalldatetimeDataType]    SmallDateTime         NULL,
	[charDataType]             Char(1)               NULL,
	[varcharDataType]          VarChar(20)           NULL,
	[textDataType]             Text                  NULL,
	[ncharDataType]            NChar(20)             NULL,
	[nvarcharDataType]         NVarChar(20)          NULL,
	[ntextDataType]            NText                 NULL,
	[binaryDataType]           Binary                NULL,
	[varbinaryDataType]        VarBinary(Max)        NULL,
	[imageDataType]            Image                 NULL,
	[timestampDataType]        Timestamp             NULL,
	[uniqueidentifierDataType] UniqueIdentifier      NULL,
	[sql_variantDataType]      Sql_Variant           NULL,
	[nvarchar_max_DataType]    NVarChar(Max)         NULL,
	[varchar_max_DataType]     VarChar(Max)          NULL,
	[varbinary_max_DataType]   VarBinary(Max)        NULL,
	[xmlDataType]              Xml                   NULL,
	[datetime2DataType]        VarChar(Max)          NULL,
	[datetimeoffsetDataType]   VarChar(Max)          NULL,
	[datetimeoffset0DataType]  VarChar(Max)          NULL,
	[datetimeoffset1DataType]  VarChar(Max)          NULL,
	[datetimeoffset2DataType]  VarChar(Max)          NULL,
	[datetimeoffset3DataType]  VarChar(Max)          NULL,
	[datetimeoffset4DataType]  VarChar(Max)          NULL,
	[datetimeoffset5DataType]  VarChar(Max)          NULL,
	[datetimeoffset6DataType]  VarChar(Max)          NULL,
	[datetimeoffset7DataType]  VarChar(Max)          NULL,
	[dateDataType]             VarChar(Max)          NULL,
	[timeDataType]             VarChar(Max)          NULL
)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[bigintDataType],
	[t1].[numericDataType],
	[t1].[bitDataType],
	[t1].[smallintDataType],
	[t1].[decimalDataType],
	[t1].[smallmoneyDataType],
	[t1].[intDataType],
	[t1].[tinyintDataType],
	[t1].[moneyDataType],
	[t1].[floatDataType],
	[t1].[realDataType],
	[t1].[datetimeDataType],
	[t1].[smalldatetimeDataType],
	[t1].[charDataType],
	[t1].[varcharDataType],
	[t1].[textDataType],
	[t1].[ncharDataType],
	[t1].[nvarcharDataType],
	[t1].[ntextDataType],
	[t1].[binaryDataType],
	[t1].[varbinaryDataType],
	[t1].[imageDataType],
	[t1].[timestampDataType],
	[t1].[uniqueidentifierDataType],
	[t1].[sql_variantDataType],
	[t1].[nvarchar_max_DataType],
	[t1].[varchar_max_DataType],
	[t1].[varbinary_max_DataType],
	[t1].[xmlDataType],
	[t1].[datetime2DataType],
	[t1].[datetimeoffsetDataType],
	[t1].[datetimeoffset0DataType],
	[t1].[datetimeoffset1DataType],
	[t1].[datetimeoffset2DataType],
	[t1].[datetimeoffset3DataType],
	[t1].[datetimeoffset4DataType],
	[t1].[datetimeoffset5DataType],
	[t1].[datetimeoffset6DataType],
	[t1].[datetimeoffset7DataType],
	[t1].[dateDataType],
	[t1].[timeDataType]
FROM
	[AllTypeCreateTest] [t1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [AllTypeCreateTest]

