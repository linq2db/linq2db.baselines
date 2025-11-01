-- SqlServer.2008.MS SqlServer.2008

SELECT bigintDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bigintDataType IS NULL OR @p IS NOT NULL AND bigintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bigintDataType IS NULL OR @p IS NOT NULL AND bigintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bigintDataType IS NULL OR @p IS NOT NULL AND bigintDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT bigintDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM [AllTypes] WHERE bigintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM [AllTypes] WHERE bigintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM [AllTypes] WHERE bigintDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT numericDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND numericDataType IS NULL OR @p IS NOT NULL AND numericDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND numericDataType IS NULL OR @p IS NOT NULL AND numericDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND numericDataType IS NULL OR @p IS NOT NULL AND numericDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT numericDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(8, 1)
SET     @p = 9999999.0

SELECT ID FROM [AllTypes] WHERE numericDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(18, 10)
SET     @p = 9999999.0

SELECT ID FROM [AllTypes] WHERE numericDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(8, 1)
SET     @p = 9999999.0

SELECT ID FROM [AllTypes] WHERE numericDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT bitDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Bit -- Boolean
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bitDataType IS NULL OR @p IS NOT NULL AND bitDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Bit -- Boolean
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bitDataType IS NULL OR @p IS NOT NULL AND bitDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bitDataType IS NULL OR @p IS NOT NULL AND bitDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT bitDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT smallintDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallintDataType IS NULL OR @p IS NOT NULL AND smallintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallintDataType IS NULL OR @p IS NOT NULL AND smallintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallintDataType IS NULL OR @p IS NOT NULL AND smallintDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT smallintDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT decimalDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND decimalDataType IS NULL OR @p IS NOT NULL AND decimalDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND decimalDataType IS NULL OR @p IS NOT NULL AND decimalDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND decimalDataType IS NULL OR @p IS NOT NULL AND decimalDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT decimalDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(8, 1)
SET     @p = 2222222.0

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(18, 10)
SET     @p = 2222222.0

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(8, 1)
SET     @p = 2222222.0

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT smallmoneyDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallMoney -- Currency
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallmoneyDataType IS NULL OR @p IS NOT NULL AND smallmoneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallmoneyDataType IS NULL OR @p IS NOT NULL AND smallmoneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallmoneyDataType IS NULL OR @p IS NOT NULL AND smallmoneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT smallmoneyDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallMoney -- Currency
SET     @p = 100000.0000

SELECT ID FROM [AllTypes] WHERE smallmoneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(18, 10)
SET     @p = 100000.0000

SELECT ID FROM [AllTypes] WHERE smallmoneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(10, 4)
SET     @p = 100000.0000

SELECT ID FROM [AllTypes] WHERE smallmoneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT intDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND intDataType IS NULL OR @p IS NOT NULL AND intDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND intDataType IS NULL OR @p IS NOT NULL AND intDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND intDataType IS NULL OR @p IS NOT NULL AND intDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT intDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT tinyintDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND tinyintDataType IS NULL OR @p IS NOT NULL AND tinyintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND tinyintDataType IS NULL OR @p IS NOT NULL AND tinyintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND tinyintDataType IS NULL OR @p IS NOT NULL AND tinyintDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT tinyintDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallInt -- Int16
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT moneyDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Money -- Currency
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND moneyDataType IS NULL OR @p IS NOT NULL AND moneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND moneyDataType IS NULL OR @p IS NOT NULL AND moneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND moneyDataType IS NULL OR @p IS NOT NULL AND moneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT moneyDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Money -- Currency
SET     @p = 100000.0000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(18, 10)
SET     @p = 100000.0000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Decimal(10, 4)
SET     @p = 100000.0000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT floatDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Float -- Double
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND floatDataType IS NULL OR @p IS NOT NULL AND floatDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Float -- Double
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND floatDataType IS NULL OR @p IS NOT NULL AND floatDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND floatDataType IS NULL OR @p IS NOT NULL AND floatDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT floatDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Float -- Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Float -- Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Float -- Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT realDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Real -- Single
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND realDataType IS NULL OR @p IS NOT NULL AND realDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Real -- Single
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND realDataType IS NULL OR @p IS NOT NULL AND realDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND realDataType IS NULL OR @p IS NOT NULL AND realDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT realDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Real -- Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Real -- Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Real -- Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT datetimeDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTime
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND datetimeDataType IS NULL OR @p IS NOT NULL AND datetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTime2
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND datetimeDataType IS NULL OR @p IS NOT NULL AND datetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND datetimeDataType IS NULL OR @p IS NOT NULL AND datetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT datetimeDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTime
SET     @p = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T12:12:12.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT smalldatetimeDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallDateTime -- DateTime
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smalldatetimeDataType IS NULL OR @p IS NOT NULL AND smalldatetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTime2
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smalldatetimeDataType IS NULL OR @p IS NOT NULL AND smalldatetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smalldatetimeDataType IS NULL OR @p IS NOT NULL AND smalldatetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT smalldatetimeDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p SmallDateTime -- DateTime
SET     @p = CAST('2012-12-12T12:12:00.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes] WHERE smalldatetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T12:12:00.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes] WHERE smalldatetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p DateTime2
SET     @p = CAST('2012-12-12T12:12:00.0000000' AS DATETIME2)

SELECT ID FROM [AllTypes] WHERE smalldatetimeDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT charDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Char -- AnsiStringFixedLength
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND charDataType IS NULL OR @p IS NOT NULL AND charDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND charDataType IS NULL OR @p IS NOT NULL AND charDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND charDataType IS NULL OR @p IS NOT NULL AND charDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT charDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Char(1) -- AnsiStringFixedLength
SET     @p = N'1'

SELECT ID FROM [AllTypes] WHERE charDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = N'1'

SELECT ID FROM [AllTypes] WHERE charDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = N'1'

SELECT ID FROM [AllTypes] WHERE charDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT varcharDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varcharDataType IS NULL OR @p IS NOT NULL AND varcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varcharDataType IS NULL OR @p IS NOT NULL AND varcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varcharDataType IS NULL OR @p IS NOT NULL AND varcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT varcharDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'234'

SELECT ID FROM [AllTypes] WHERE varcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'234'

SELECT ID FROM [AllTypes] WHERE varcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'234'

SELECT ID FROM [AllTypes] WHERE varcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT ncharDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ncharDataType IS NULL OR @p IS NOT NULL AND ncharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ncharDataType IS NULL OR @p IS NOT NULL AND ncharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ncharDataType IS NULL OR @p IS NOT NULL AND ncharDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT ncharDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT nvarcharDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarcharDataType IS NULL OR @p IS NOT NULL AND nvarcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarcharDataType IS NULL OR @p IS NOT NULL AND nvarcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarcharDataType IS NULL OR @p IS NOT NULL AND nvarcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT nvarcharDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT textDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008

SELECT textDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008

SELECT ntextDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008

SELECT ntextDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008

SELECT binaryDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND binaryDataType IS NULL OR @p IS NOT NULL AND binaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND binaryDataType IS NULL OR @p IS NOT NULL AND binaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND binaryDataType IS NULL OR @p IS NOT NULL AND binaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT binaryDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Binary(1)
SET     @p = 0x01

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x01

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x01

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT varbinaryDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinaryDataType IS NULL OR @p IS NOT NULL AND varbinaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinaryDataType IS NULL OR @p IS NOT NULL AND varbinaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinaryDataType IS NULL OR @p IS NOT NULL AND varbinaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT varbinaryDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x02

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x02

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x02

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT imageDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008

SELECT imageDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008

SELECT uniqueidentifierDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p UniqueIdentifier -- Guid
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND uniqueidentifierDataType IS NULL OR @p IS NOT NULL AND uniqueidentifierDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p UniqueIdentifier -- Guid
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND uniqueidentifierDataType IS NULL OR @p IS NOT NULL AND uniqueidentifierDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND uniqueidentifierDataType IS NULL OR @p IS NOT NULL AND uniqueidentifierDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT uniqueidentifierDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p UniqueIdentifier -- Guid
SET     @p = '6f9619ff-8b86-d011-b42d-00c04fc964ff'

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p UniqueIdentifier -- Guid
SET     @p = '6f9619ff-8b86-d011-b42d-00c04fc964ff'

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p UniqueIdentifier -- Guid
SET     @p = '6f9619ff-8b86-d011-b42d-00c04fc964ff'

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT sql_variantDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Variant -- Object
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND sql_variantDataType IS NULL OR @p IS NOT NULL AND sql_variantDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Variant -- Object
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND sql_variantDataType IS NULL OR @p IS NOT NULL AND sql_variantDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND sql_variantDataType IS NULL OR @p IS NOT NULL AND sql_variantDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT sql_variantDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Variant -- Object
SET     @p = 10

SELECT ID FROM [AllTypes] WHERE sql_variantDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Variant -- Object
SET     @p = 10

SELECT ID FROM [AllTypes] WHERE sql_variantDataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Int -- Int32
SET     @p = 10

SELECT ID FROM [AllTypes] WHERE sql_variantDataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT nvarchar_max_DataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarchar_max_DataType IS NULL OR @p IS NOT NULL AND nvarchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarchar_max_DataType IS NULL OR @p IS NOT NULL AND nvarchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarchar_max_DataType IS NULL OR @p IS NOT NULL AND nvarchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT nvarchar_max_DataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'22322'

SELECT ID FROM [AllTypes] WHERE nvarchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'22322'

SELECT ID FROM [AllTypes] WHERE nvarchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'22322'

SELECT ID FROM [AllTypes] WHERE nvarchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT varchar_max_DataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varchar_max_DataType IS NULL OR @p IS NOT NULL AND varchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varchar_max_DataType IS NULL OR @p IS NOT NULL AND varchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varchar_max_DataType IS NULL OR @p IS NOT NULL AND varchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT varchar_max_DataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'3333'

SELECT ID FROM [AllTypes] WHERE varchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'3333'

SELECT ID FROM [AllTypes] WHERE varchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'3333'

SELECT ID FROM [AllTypes] WHERE varchar_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT varbinary_max_DataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinary_max_DataType IS NULL OR @p IS NOT NULL AND varbinary_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinary_max_DataType IS NULL OR @p IS NOT NULL AND varbinary_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinary_max_DataType IS NULL OR @p IS NOT NULL AND varbinary_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT varbinary_max_DataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x00000929

SELECT ID FROM [AllTypes] WHERE varbinary_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x00000929

SELECT ID FROM [AllTypes] WHERE varbinary_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x00000929

SELECT ID FROM [AllTypes] WHERE varbinary_max_DataType = @p

-- SqlServer.2008.MS SqlServer.2008

SELECT xmlDataType FROM [AllTypes] WHERE ID = 1

-- SqlServer.2008.MS SqlServer.2008

SELECT xmlDataType FROM [AllTypes] WHERE ID = 2

-- SqlServer.2008.MS SqlServer.2008

SELECT timestampDataType FROM AllTypes WHERE ID = 1

