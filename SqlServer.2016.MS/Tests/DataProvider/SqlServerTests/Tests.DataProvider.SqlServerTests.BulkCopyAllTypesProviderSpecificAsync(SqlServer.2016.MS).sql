BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DELETE [p]
FROM
	[AllTypes] [p]
WHERE
	[p].[ID] >= 700

BeforeExecute
INSERT ASYNC BULK [AllTypes](ID, bigintDataType, numericDataType, bitDataType, smallintDataType, decimalDataType, smallmoneyDataType, intDataType, tinyintDataType, moneyDataType, floatDataType, realDataType, datetimeDataType, smalldatetimeDataType, charDataType, varcharDataType, textDataType, ncharDataType, nvarcharDataType, ntextDataType, binaryDataType, varbinaryDataType, imageDataType, uniqueidentifierDataType, sql_variantDataType, nvarchar_max_DataType, varchar_max_DataType, varbinary_max_DataType, xmlDataType, datetime2DataType, datetimeoffsetDataType, datetimeoffset0DataType, datetimeoffset1DataType, datetimeoffset2DataType, datetimeoffset3DataType, datetimeoffset4DataType, datetimeoffset5DataType, datetimeoffset6DataType, datetimeoffset7DataType, dateDataType, timeDataType)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[ID],
	[t].[bigintDataType],
	[t].[numericDataType],
	[t].[bitDataType],
	[t].[smallintDataType],
	[t].[decimalDataType],
	[t].[smallmoneyDataType],
	[t].[intDataType],
	[t].[tinyintDataType],
	[t].[moneyDataType],
	[t].[floatDataType],
	[t].[realDataType],
	[t].[datetimeDataType],
	[t].[smalldatetimeDataType],
	[t].[charDataType],
	[t].[varcharDataType],
	[t].[textDataType],
	[t].[ncharDataType],
	[t].[nvarcharDataType],
	[t].[ntextDataType],
	[t].[binaryDataType],
	[t].[varbinaryDataType],
	[t].[imageDataType],
	[t].[timestampDataType],
	[t].[uniqueidentifierDataType],
	[t].[sql_variantDataType],
	[t].[nvarchar_max_DataType],
	[t].[varchar_max_DataType],
	[t].[varbinary_max_DataType],
	[t].[xmlDataType],
	[t].[datetime2DataType],
	[t].[datetimeoffsetDataType],
	[t].[datetimeoffset0DataType],
	[t].[datetimeoffset1DataType],
	[t].[datetimeoffset2DataType],
	[t].[datetimeoffset3DataType],
	[t].[datetimeoffset4DataType],
	[t].[datetimeoffset5DataType],
	[t].[datetimeoffset6DataType],
	[t].[datetimeoffset7DataType],
	[t].[dateDataType],
	[t].[timeDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[ID] IN (700, 701)
ORDER BY
	[t].[ID]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DELETE [p]
FROM
	[AllTypes] [p]
WHERE
	[p].[ID] >= 700

