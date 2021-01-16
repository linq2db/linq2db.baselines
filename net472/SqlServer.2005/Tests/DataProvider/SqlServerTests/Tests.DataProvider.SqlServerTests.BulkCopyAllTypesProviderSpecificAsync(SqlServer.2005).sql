BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 700

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @ID

BeforeExecute
INSERT ASYNC BULK [AllTypes](ID, bigintDataType, numericDataType, bitDataType, smallintDataType, decimalDataType, smallmoneyDataType, intDataType, tinyintDataType, moneyDataType, floatDataType, realDataType, datetimeDataType, smalldatetimeDataType, charDataType, varcharDataType, textDataType, ncharDataType, nvarcharDataType, ntextDataType, binaryDataType, varbinaryDataType, imageDataType, uniqueidentifierDataType, sql_variantDataType, nvarchar_max_DataType, varchar_max_DataType, varbinary_max_DataType, xmlDataType, datetime2DataType, datetimeoffsetDataType, datetimeoffset0DataType, datetimeoffset1DataType, datetimeoffset2DataType, datetimeoffset3DataType, datetimeoffset4DataType, datetimeoffset5DataType, datetimeoffset6DataType, datetimeoffset7DataType, dateDataType, timeDataType)

BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 700

DELETE [t1]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] >= @ID

