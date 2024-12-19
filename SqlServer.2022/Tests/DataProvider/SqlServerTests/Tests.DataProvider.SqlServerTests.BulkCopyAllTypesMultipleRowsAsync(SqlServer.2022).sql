BeforeExecute
-- SqlServer.2022 (asynchronously)

DELETE [p]
FROM
	[AllTypes] [p]
WHERE
	[p].[ID] >= 700

BeforeExecute
-- SqlServer.2022 (asynchronously)

SET IDENTITY_INSERT [AllTypes] ON

BeforeExecute
-- SqlServer.2022 (asynchronously)

INSERT INTO [AllTypes]
(
	[ID],
	[bigintDataType],
	[numericDataType],
	[bitDataType],
	[smallintDataType],
	[decimalDataType],
	[smallmoneyDataType],
	[intDataType],
	[tinyintDataType],
	[moneyDataType],
	[floatDataType],
	[realDataType],
	[datetimeDataType],
	[smalldatetimeDataType],
	[charDataType],
	[varcharDataType],
	[textDataType],
	[ncharDataType],
	[nvarcharDataType],
	[ntextDataType],
	[binaryDataType],
	[varbinaryDataType],
	[imageDataType],
	[uniqueidentifierDataType],
	[sql_variantDataType],
	[nvarchar_max_DataType],
	[varchar_max_DataType],
	[varbinary_max_DataType],
	[xmlDataType],
	[datetime2DataType],
	[datetimeoffsetDataType],
	[datetimeoffset0DataType],
	[datetimeoffset1DataType],
	[datetimeoffset2DataType],
	[datetimeoffset3DataType],
	[datetimeoffset4DataType],
	[datetimeoffset5DataType],
	[datetimeoffset6DataType],
	[datetimeoffset7DataType],
	[dateDataType],
	[timeDataType]
)
VALUES
(700,1,1.1,1,1,1.1,1.1,1,1,1.1,1.1000000000000001,1.10000002,DATETIMEFROMPARTS(2014, 12, 17, 21, 2, 58, 123),CAST('2014-12-17T21:03:00.000' AS SMALLDATETIME),'E','E','E',N'Ё',N'Ё',N'Ё',0x01,0x01,0x0102030405,'00000001-0001-0001-0101-010101010101',N'1',N'1','1',0x0102030432,N'<xml />',DATETIME2FROMPARTS(2014, 12, 17, 21, 2, 58, 1230000, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 1230000, 5, 0, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 0, 5, 0, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 1000000, 5, 0, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 1200000, 5, 0, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 1230000, 5, 0, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 1230000, 5, 0, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 1230000, 5, 0, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 1230000, 5, 0, 7),DATETIMEOFFSETFROMPARTS(2014, 12, 17, 21, 2, 58, 1230000, 5, 0, 7),DATEFROMPARTS(2014, 12, 17),TIMEFROMPARTS(10, 11, 12, 5670000, 7)),
(701,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)

BeforeExecute
-- SqlServer.2022 (asynchronously)

SET IDENTITY_INSERT [AllTypes] OFF

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022 (asynchronously)

DELETE [p]
FROM
	[AllTypes] [p]
WHERE
	[p].[ID] >= 700

