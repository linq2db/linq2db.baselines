-- SqlServer.SA SqlServer.2019

SELECT dateDataType FROM [AllTypes2] WHERE ID = 1

-- SqlServer.SA SqlServer.2019
DECLARE @p Date
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND dateDataType IS NULL OR @p IS NOT NULL AND dateDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTime2
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND dateDataType IS NULL OR @p IS NOT NULL AND dateDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND dateDataType IS NULL OR @p IS NOT NULL AND dateDataType = @p

-- SqlServer.SA SqlServer.2019

SELECT dateDataType FROM [AllTypes2] WHERE ID = 2

-- SqlServer.SA SqlServer.2019
DECLARE @p Date
SET     @p = DATETIME2FROMPARTS(2012, 12, 12, 0, 0, 0, 0, 7)

SELECT ID FROM [AllTypes2] WHERE dateDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2012, 12, 12, 0, 0, 0, 0, 7)

SELECT ID FROM [AllTypes2] WHERE dateDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2012, 12, 12, 0, 0, 0, 0, 7)

SELECT ID FROM [AllTypes2] WHERE dateDataType = @p

-- SqlServer.SA SqlServer.2019

SELECT datetimeoffsetDataType FROM [AllTypes2] WHERE ID = 1

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTimeOffset
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetimeoffsetDataType IS NULL OR @p IS NOT NULL AND datetimeoffsetDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTimeOffset
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetimeoffsetDataType IS NULL OR @p IS NOT NULL AND datetimeoffsetDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetimeoffsetDataType IS NULL OR @p IS NOT NULL AND datetimeoffsetDataType = @p

-- SqlServer.SA SqlServer.2019

SELECT datetimeoffsetDataType FROM [AllTypes2] WHERE ID = 2

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2012, 12, 12, 12, 12, 12, 120000, 5, 0, 7)

SELECT ID FROM [AllTypes2] WHERE datetimeoffsetDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2012, 12, 12, 12, 12, 12, 120000, 5, 0, 7)

SELECT ID FROM [AllTypes2] WHERE datetimeoffsetDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTimeOffset
SET     @p = DATETIMEOFFSETFROMPARTS(2012, 12, 12, 12, 12, 12, 120000, 5, 0, 7)

SELECT ID FROM [AllTypes2] WHERE datetimeoffsetDataType = @p

-- SqlServer.SA SqlServer.2019

SELECT datetime2DataType FROM [AllTypes2] WHERE ID = 1

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTime2
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetime2DataType IS NULL OR @p IS NOT NULL AND datetime2DataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTime2
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetime2DataType IS NULL OR @p IS NOT NULL AND datetime2DataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND datetime2DataType IS NULL OR @p IS NOT NULL AND datetime2DataType = @p

-- SqlServer.SA SqlServer.2019

SELECT datetime2DataType FROM [AllTypes2] WHERE ID = 2

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 120000, 7)

SELECT ID FROM [AllTypes2] WHERE datetime2DataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 120000, 7)

SELECT ID FROM [AllTypes2] WHERE datetime2DataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2012, 12, 12, 12, 12, 12, 120000, 7)

SELECT ID FROM [AllTypes2] WHERE datetime2DataType = @p

-- SqlServer.SA SqlServer.2019

SELECT timeDataType FROM [AllTypes2] WHERE ID = 1

-- SqlServer.SA SqlServer.2019
DECLARE @p Time
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND timeDataType IS NULL OR @p IS NOT NULL AND timeDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p Time
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND timeDataType IS NULL OR @p IS NOT NULL AND timeDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND timeDataType IS NULL OR @p IS NOT NULL AND timeDataType = @p

-- SqlServer.SA SqlServer.2019

SELECT timeDataType FROM [AllTypes2] WHERE ID = 2

-- SqlServer.SA SqlServer.2019
DECLARE @p Time
SET     @p = TIMEFROMPARTS(12, 12, 12, 120000, 7)

SELECT ID FROM [AllTypes2] WHERE timeDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p Time
SET     @p = TIMEFROMPARTS(12, 12, 12, 120000, 7)

SELECT ID FROM [AllTypes2] WHERE timeDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p Time
SET     @p = TIMEFROMPARTS(12, 12, 12, 120000, 7)

SELECT ID FROM [AllTypes2] WHERE timeDataType = @p

-- SqlServer.SA SqlServer.2019

SELECT hierarchyidDataType FROM [AllTypes2] WHERE ID = 1

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND hierarchyidDataType IS NULL OR @p IS NOT NULL AND hierarchyidDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes2] WHERE @p IS NULL AND hierarchyidDataType IS NULL OR @p IS NOT NULL AND hierarchyidDataType = @p

-- SqlServer.SA SqlServer.2019

SELECT hierarchyidDataType FROM [AllTypes2] WHERE ID = 2

-- SqlServer.SA SqlServer.2019
DECLARE @p hierarchyid -- Udt -- Object
SET     @p = /1/3/

SELECT ID FROM [AllTypes2] WHERE hierarchyidDataType = @p

-- SqlServer.SA SqlServer.2019
DECLARE @p hierarchyid -- Udt -- Object
SET     @p = /1/3/

SELECT ID FROM [AllTypes2] WHERE hierarchyidDataType = @p

-- SqlServer.SA SqlServer.2019

SELECT geographyDataType FROM [AllTypes2] WHERE ID = 1

-- SqlServer.SA SqlServer.2019

SELECT geographyDataType FROM [AllTypes2] WHERE ID = 2

-- SqlServer.SA SqlServer.2019

SELECT geometryDataType FROM [AllTypes2] WHERE ID = 1

-- SqlServer.SA SqlServer.2019

SELECT geometryDataType FROM [AllTypes2] WHERE ID = 2

