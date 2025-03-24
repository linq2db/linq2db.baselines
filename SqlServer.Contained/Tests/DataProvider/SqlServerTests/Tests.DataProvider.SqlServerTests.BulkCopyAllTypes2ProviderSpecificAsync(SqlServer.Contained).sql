﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

DELETE [p]
FROM
	[AllTypes2] [p]
WHERE
	[p].[ID] >= 3

BeforeExecute
INSERT ASYNC BULK [AllTypes2](ID, dateDataType, datetimeoffsetDataType, datetime2DataType, timeDataType, hierarchyidDataType, geographyDataType, geometryDataType)

BeforeExecute
--  SqlServer.Contained SqlServer.2019

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

