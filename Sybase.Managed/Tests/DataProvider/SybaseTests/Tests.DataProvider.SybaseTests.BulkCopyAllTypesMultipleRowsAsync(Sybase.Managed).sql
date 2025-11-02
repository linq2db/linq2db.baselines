-- Sybase.Managed Sybase

DELETE FROM [AllTypes]
FROM
	[AllTypes] [p]
WHERE
	[p].[ID] >= 700

-- Sybase.Managed Sybase

INSERT INTO [AllTypes]
(
	[ID],
	[bigintDataType],
	[uBigintDataType],
	[numericDataType],
	[bitDataType],
	[smallintDataType],
	[uSmallintDataType],
	[decimalDataType],
	[moneyDataType],
	[smallmoneyDataType],
	[intDataType],
	[uIntDataType],
	[tinyintDataType],
	[floatDataType],
	[realDataType],
	[datetimeDataType],
	[smalldatetimeDataType],
	[dateDataType],
	[timeDataType],
	[charDataType],
	[char20DataType],
	[varcharDataType],
	[textDataType],
	[ncharDataType],
	[nvarcharDataType],
	[ntextDataType],
	[binaryDataType],
	[varbinaryDataType],
	[imageDataType],
	[timestampDataType]
)
SELECT 700,1,2,1.6,1,1,2,1.1,1.2,1.3,1,2,1,1.3999999999999999,1.5,'2014-12-17 21:02:58.123','2014-12-17 21:03:00','2014-12-17','10:11:12.000','E','Eboi','E','E','Ё','Ё','Ё',0x01,0x01,0x0102030405,0x0504030201 UNION ALL
SELECT 701,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL

-- Sybase.Managed Sybase

SELECT
	[t].[ID],
	[t].[bigintDataType],
	[t].[uBigintDataType],
	[t].[numericDataType],
	[t].[bitDataType],
	[t].[smallintDataType],
	[t].[uSmallintDataType],
	[t].[decimalDataType],
	[t].[moneyDataType],
	[t].[smallmoneyDataType],
	[t].[intDataType],
	[t].[uIntDataType],
	[t].[tinyintDataType],
	[t].[floatDataType],
	[t].[realDataType],
	[t].[datetimeDataType],
	[t].[smalldatetimeDataType],
	[t].[dateDataType],
	[t].[timeDataType],
	[t].[charDataType],
	[t].[char20DataType],
	[t].[varcharDataType],
	[t].[textDataType],
	[t].[ncharDataType],
	[t].[nvarcharDataType],
	[t].[ntextDataType],
	[t].[binaryDataType],
	[t].[varbinaryDataType],
	[t].[imageDataType],
	[t].[timestampDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[ID] IN (700, 701)
ORDER BY
	[t].[ID]

-- Sybase.Managed Sybase

DELETE FROM [AllTypes]
FROM
	[AllTypes] [p]
WHERE
	[p].[ID] >= 700

