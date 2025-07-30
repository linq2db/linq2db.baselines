BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [p]
FROM
	[AllTypes2] [p]
WHERE
	[p].[ID] >= 3

BeforeExecute
INSERT BULK [AllTypes2](ID, dateDataType, datetimeoffsetDataType, datetime2DataType, timeDataType, hierarchyidDataType, geographyDataType, geometryDataType)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ID],
	[p].[dateDataType],
	[p].[datetimeoffsetDataType],
	[p].[datetime2DataType],
	[p].[timeDataType],
	[p].[hierarchyidDataType],
	[p].[geographyDataType],
	[p].[geometryDataType]
FROM
	[AllTypes2] [p]
WHERE
	[p].[ID] >= 3
ORDER BY
	[p].[ID]

