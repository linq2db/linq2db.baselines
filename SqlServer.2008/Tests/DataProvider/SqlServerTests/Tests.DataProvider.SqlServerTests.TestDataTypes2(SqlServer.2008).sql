BeforeExecute
-- SqlServer.2008

SELECT dateDataType FROM [AllTypes2] WHERE ID = 1

BeforeExecute
-- SqlServer.2008
DECLARE @p Date
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND dateDataType IS NULL OR @p IS NOT NULL AND dateDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND dateDataType IS NULL OR @p IS NOT NULL AND dateDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND dateDataType IS NULL OR @p IS NOT NULL AND dateDataType = @p

BeforeExecute
-- SqlServer.2008

SELECT dateDataType FROM [AllTypes2] WHERE ID = 2

BeforeExecute
-- SqlServer.2008
DECLARE @p Date
SET     @p = CAST('2012-12-12T00:00:00.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes2] WHERE dateDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T00:00:00.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes2] WHERE dateDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T00:00:00.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes2] WHERE dateDataType = @p

BeforeExecute
-- SqlServer.2008

SELECT datetimeoffsetDataType FROM [AllTypes2] WHERE ID = 1

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTimeOffset
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetimeoffsetDataType IS NULL OR @p IS NOT NULL AND datetimeoffsetDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTimeOffset
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetimeoffsetDataType IS NULL OR @p IS NOT NULL AND datetimeoffsetDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetimeoffsetDataType IS NULL OR @p IS NOT NULL AND datetimeoffsetDataType = @p

BeforeExecute
-- SqlServer.2008

SELECT datetimeoffsetDataType FROM [AllTypes2] WHERE ID = 2

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTimeOffset
SET     @p = CAST('2012-12-12T12:12:12.0120000+05:00' AS DATETIMEOFFSET)

SELECT ID FROM [AllTypes2] WHERE datetimeoffsetDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTimeOffset
SET     @p = CAST('2012-12-12T12:12:12.0120000+05:00' AS DATETIMEOFFSET)

SELECT ID FROM [AllTypes2] WHERE datetimeoffsetDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTimeOffset
SET     @p = CAST('2012-12-12T12:12:12.0120000+05:00' AS DATETIMEOFFSET)

SELECT ID FROM [AllTypes2] WHERE datetimeoffsetDataType = @p

BeforeExecute
-- SqlServer.2008

SELECT datetime2DataType FROM [AllTypes2] WHERE ID = 1

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetime2DataType IS NULL OR @p IS NOT NULL AND datetime2DataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetime2DataType IS NULL OR @p IS NOT NULL AND datetime2DataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetime2DataType IS NULL OR @p IS NOT NULL AND datetime2DataType = @p

BeforeExecute
-- SqlServer.2008

SELECT datetime2DataType FROM [AllTypes2] WHERE ID = 2

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T12:12:12.0120000' AS DATETIME2)

SELECT ID FROM [AllTypes2] WHERE datetime2DataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T12:12:12.0120000' AS DATETIME2)

SELECT ID FROM [AllTypes2] WHERE datetime2DataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T12:12:12.0120000' AS DATETIME2)

SELECT ID FROM [AllTypes2] WHERE datetime2DataType = @p

BeforeExecute
-- SqlServer.2008

SELECT timeDataType FROM [AllTypes2] WHERE ID = 1

BeforeExecute
-- SqlServer.2008
DECLARE @p Time
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND timeDataType IS NULL OR @p IS NOT NULL AND timeDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p Time
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND timeDataType IS NULL OR @p IS NOT NULL AND timeDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND timeDataType IS NULL OR @p IS NOT NULL AND timeDataType = @p

BeforeExecute
-- SqlServer.2008

SELECT timeDataType FROM [AllTypes2] WHERE ID = 2

BeforeExecute
-- SqlServer.2008
DECLARE @p Time
SET     @p = CAST('12:12:12.0120000' AS TIME)

SELECT ID FROM [AllTypes2] WHERE timeDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p Time
SET     @p = CAST('12:12:12.0120000' AS TIME)

SELECT ID FROM [AllTypes2] WHERE timeDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p Time
SET     @p = CAST('12:12:12.0120000' AS TIME)

SELECT ID FROM [AllTypes2] WHERE timeDataType = @p

BeforeExecute
-- SqlServer.2008

SELECT hierarchyidDataType FROM [AllTypes2] WHERE ID = 1

BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND hierarchyidDataType IS NULL OR @p IS NOT NULL AND hierarchyidDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND hierarchyidDataType IS NULL OR @p IS NOT NULL AND hierarchyidDataType = @p

BeforeExecute
-- SqlServer.2008

SELECT hierarchyidDataType FROM [AllTypes2] WHERE ID = 2

BeforeExecute
-- SqlServer.2008
DECLARE @p hierarchyid -- Udt -- Object
SET     @p = /1/3/

SELECT ID FROM [AllTypes2] WHERE hierarchyidDataType = @p

BeforeExecute
-- SqlServer.2008
DECLARE @p hierarchyid -- Udt -- Object
SET     @p = /1/3/

SELECT ID FROM [AllTypes2] WHERE hierarchyidDataType = @p

BeforeExecute
-- SqlServer.2008

SELECT geographyDataType FROM [AllTypes2] WHERE ID = 1

BeforeExecute
-- SqlServer.2008

SELECT geographyDataType FROM [AllTypes2] WHERE ID = 2

BeforeExecute
-- SqlServer.2008

SELECT geometryDataType FROM [AllTypes2] WHERE ID = 1

BeforeExecute
-- SqlServer.2008

SELECT geometryDataType FROM [AllTypes2] WHERE ID = 2

