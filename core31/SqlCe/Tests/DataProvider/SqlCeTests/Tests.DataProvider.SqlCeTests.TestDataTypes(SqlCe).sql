BeforeExecute
-- SqlCe

SELECT bigintDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bigintDataType IS NULL OR @p IS NOT NULL AND bigintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bigintDataType IS NULL OR @p IS NOT NULL AND bigintDataType = @p

BeforeExecute
-- SqlCe

SELECT bigintDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Decimal
SET     @p = 1000000

SELECT ID FROM [AllTypes] WHERE bigintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM [AllTypes] WHERE bigintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM [AllTypes] WHERE bigintDataType = @p

BeforeExecute
-- SqlCe

SELECT numericDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND numericDataType IS NULL OR @p IS NOT NULL AND numericDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND numericDataType IS NULL OR @p IS NOT NULL AND numericDataType = @p

BeforeExecute
-- SqlCe

SELECT numericDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Decimal(7, 0)
SET     @p = 9999999

SELECT ID FROM [AllTypes] WHERE numericDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal(7, 0)
SET     @p = 9999999

SELECT ID FROM [AllTypes] WHERE numericDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal(7, 0)
SET     @p = 9999999

SELECT ID FROM [AllTypes] WHERE numericDataType = @p

BeforeExecute
-- SqlCe

SELECT bitDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bitDataType IS NULL OR @p IS NOT NULL AND bitDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bitDataType IS NULL OR @p IS NOT NULL AND bitDataType = @p

BeforeExecute
-- SqlCe

SELECT bitDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

BeforeExecute
-- SqlCe

SELECT smallintDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallintDataType IS NULL OR @p IS NOT NULL AND smallintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallintDataType IS NULL OR @p IS NOT NULL AND smallintDataType = @p

BeforeExecute
-- SqlCe

SELECT smallintDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

BeforeExecute
-- SqlCe

SELECT decimalDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND decimalDataType IS NULL OR @p IS NOT NULL AND decimalDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND decimalDataType IS NULL OR @p IS NOT NULL AND decimalDataType = @p

BeforeExecute
-- SqlCe

SELECT decimalDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Decimal(7, 0)
SET     @p = 2222222

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal(7, 0)
SET     @p = 2222222

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal(7, 0)
SET     @p = 2222222

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

BeforeExecute
-- SqlCe

SELECT intDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND intDataType IS NULL OR @p IS NOT NULL AND intDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND intDataType IS NULL OR @p IS NOT NULL AND intDataType = @p

BeforeExecute
-- SqlCe

SELECT intDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

BeforeExecute
-- SqlCe

SELECT tinyintDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND tinyintDataType IS NULL OR @p IS NOT NULL AND tinyintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND tinyintDataType IS NULL OR @p IS NOT NULL AND tinyintDataType = @p

BeforeExecute
-- SqlCe

SELECT tinyintDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p SmallInt -- Int16
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

BeforeExecute
-- SqlCe

SELECT moneyDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Money -- Currency
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND moneyDataType IS NULL OR @p IS NOT NULL AND moneyDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND moneyDataType IS NULL OR @p IS NOT NULL AND moneyDataType = @p

BeforeExecute
-- SqlCe

SELECT moneyDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Money -- Currency
SET     @p = 100000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal(6, 0)
SET     @p = 100000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Decimal(6, 0)
SET     @p = 100000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

BeforeExecute
-- SqlCe

SELECT floatDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Float -- Double
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND floatDataType IS NULL OR @p IS NOT NULL AND floatDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Float -- Double
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND floatDataType IS NULL OR @p IS NOT NULL AND floatDataType = @p

BeforeExecute
-- SqlCe

SELECT floatDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Float -- Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Float -- Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Float -- Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

BeforeExecute
-- SqlCe

SELECT realDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Real -- Single
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND realDataType IS NULL OR @p IS NOT NULL AND realDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Real -- Single
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND realDataType IS NULL OR @p IS NOT NULL AND realDataType = @p

BeforeExecute
-- SqlCe

SELECT realDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Real -- Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Real -- Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p Real -- Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

BeforeExecute
-- SqlCe

SELECT datetimeDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p DateTime
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND datetimeDataType IS NULL OR @p IS NOT NULL AND datetimeDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p DateTime
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND datetimeDataType IS NULL OR @p IS NOT NULL AND datetimeDataType = @p

BeforeExecute
-- SqlCe

SELECT datetimeDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p DateTime
SET     @p = '2012-12-12 12:12:12'

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p DateTime
SET     @p = '2012-12-12 12:12:12'

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p DateTime
SET     @p = '2012-12-12 12:12:12'

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

BeforeExecute
-- SqlCe

SELECT ncharDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ncharDataType IS NULL OR @p IS NOT NULL AND ncharDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ncharDataType IS NULL OR @p IS NOT NULL AND ncharDataType = @p

BeforeExecute
-- SqlCe

SELECT ncharDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(5) -- String
SET     @p = '23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(255) -- String
SET     @p = '23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(5) -- String
SET     @p = '23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

BeforeExecute
-- SqlCe

SELECT nvarcharDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarcharDataType IS NULL OR @p IS NOT NULL AND nvarcharDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarcharDataType IS NULL OR @p IS NOT NULL AND nvarcharDataType = @p

BeforeExecute
-- SqlCe

SELECT nvarcharDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(4) -- String
SET     @p = '3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(255) -- String
SET     @p = '3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(4) -- String
SET     @p = '3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

BeforeExecute
-- SqlCe

SELECT ntextDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe

SELECT ntextDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe

SELECT binaryDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND binaryDataType IS NULL OR @p IS NOT NULL AND binaryDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND binaryDataType IS NULL OR @p IS NOT NULL AND binaryDataType = @p

BeforeExecute
-- SqlCe

SELECT binaryDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p Binary(1)
SET     @p = 0x01

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(1) -- Binary
SET     @p = 0x01

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(1) -- Binary
SET     @p = 0x01

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

BeforeExecute
-- SqlCe

SELECT varbinaryDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinaryDataType IS NULL OR @p IS NOT NULL AND varbinaryDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinaryDataType IS NULL OR @p IS NOT NULL AND varbinaryDataType = @p

BeforeExecute
-- SqlCe

SELECT varbinaryDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(1) -- Binary
SET     @p = 0x02

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(1) -- Binary
SET     @p = 0x02

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(1) -- Binary
SET     @p = 0x02

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

BeforeExecute
-- SqlCe

SELECT imageDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe

SELECT imageDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe

SELECT uniqueidentifierDataType FROM [AllTypes] WHERE ID = 1

BeforeExecute
-- SqlCe
DECLARE @p UniqueIdentifier -- Guid
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND uniqueidentifierDataType IS NULL OR @p IS NOT NULL AND uniqueidentifierDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p UniqueIdentifier -- Guid
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND uniqueidentifierDataType IS NULL OR @p IS NOT NULL AND uniqueidentifierDataType = @p

BeforeExecute
-- SqlCe

SELECT uniqueidentifierDataType FROM [AllTypes] WHERE ID = 2

BeforeExecute
-- SqlCe
DECLARE @p UniqueIdentifier -- Guid
SET     @p = '6f9619ff-8b86-d011-b42d-00c04fc964ff'

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p UniqueIdentifier -- Guid
SET     @p = '6f9619ff-8b86-d011-b42d-00c04fc964ff'

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

BeforeExecute
-- SqlCe
DECLARE @p UniqueIdentifier -- Guid
SET     @p = '6f9619ff-8b86-d011-b42d-00c04fc964ff'

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

BeforeExecute
-- SqlCe

SELECT timestampDataType FROM AllTypes WHERE ID = 1

