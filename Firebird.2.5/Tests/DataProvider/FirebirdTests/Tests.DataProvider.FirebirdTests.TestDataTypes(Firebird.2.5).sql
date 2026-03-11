-- Firebird.2.5 Firebird

SELECT "bigintDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "bigintDataType" IS NULL OR @p IS NOT NULL AND "bigintDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "bigintDataType" IS NULL OR @p IS NOT NULL AND "bigintDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "bigintDataType" IS NULL OR @p IS NOT NULL AND "bigintDataType" = @p

-- Firebird.2.5 Firebird

SELECT "bigintDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM "AllTypes" WHERE "bigintDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM "AllTypes" WHERE "bigintDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM "AllTypes" WHERE "bigintDataType" = @p

-- Firebird.2.5 Firebird

SELECT "smallintDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "smallintDataType" IS NULL OR @p IS NOT NULL AND "smallintDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "smallintDataType" IS NULL OR @p IS NOT NULL AND "smallintDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "smallintDataType" IS NULL OR @p IS NOT NULL AND "smallintDataType" = @p

-- Firebird.2.5 Firebird

SELECT "smallintDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM "AllTypes" WHERE "smallintDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM "AllTypes" WHERE "smallintDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM "AllTypes" WHERE "smallintDataType" = @p

-- Firebird.2.5 Firebird

SELECT "decimalDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decimalDataType" IS NULL OR @p IS NOT NULL AND "decimalDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Decimal(18, 10)
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decimalDataType" IS NULL OR @p IS NOT NULL AND "decimalDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decimalDataType" IS NULL OR @p IS NOT NULL AND "decimalDataType" = @p

-- Firebird.2.5 Firebird

SELECT "decimalDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p Decimal(7, 0)
SET     @p = 2222222

SELECT ID FROM "AllTypes" WHERE "decimalDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Decimal(18, 10)
SET     @p = 2222222

SELECT ID FROM "AllTypes" WHERE "decimalDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Decimal(7, 0)
SET     @p = 2222222

SELECT ID FROM "AllTypes" WHERE "decimalDataType" = @p

-- Firebird.2.5 Firebird

SELECT "intDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "intDataType" IS NULL OR @p IS NOT NULL AND "intDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "intDataType" IS NULL OR @p IS NOT NULL AND "intDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "intDataType" IS NULL OR @p IS NOT NULL AND "intDataType" = @p

-- Firebird.2.5 Firebird

SELECT "intDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM "AllTypes" WHERE "intDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM "AllTypes" WHERE "intDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM "AllTypes" WHERE "intDataType" = @p

-- Firebird.2.5 Firebird

SELECT "floatDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p Float -- Single
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "floatDataType" IS NULL OR @p IS NOT NULL AND "floatDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Float -- Single
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "floatDataType" IS NULL OR @p IS NOT NULL AND "floatDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "floatDataType" IS NULL OR @p IS NOT NULL AND "floatDataType" = @p

-- Firebird.2.5 Firebird

SELECT "floatDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p Float -- Single
SET     @p = 20.3099995

SELECT ID FROM "AllTypes" WHERE "floatDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Float -- Single
SET     @p = 20.3099995

SELECT ID FROM "AllTypes" WHERE "floatDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Float -- Single
SET     @p = 20.3099995

SELECT ID FROM "AllTypes" WHERE "floatDataType" = @p

-- Firebird.2.5 Firebird

SELECT "realDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p Double
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "realDataType" IS NULL OR @p IS NOT NULL AND "realDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Double
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "realDataType" IS NULL OR @p IS NOT NULL AND "realDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "realDataType" IS NULL OR @p IS NOT NULL AND "realDataType" = @p

-- Firebird.2.5 Firebird

SELECT "realDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p Double
SET     @p = 16

SELECT ID FROM "AllTypes" WHERE "realDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Double
SET     @p = 16

SELECT ID FROM "AllTypes" WHERE "realDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Double
SET     @p = 16

SELECT ID FROM "AllTypes" WHERE "realDataType" = @p

-- Firebird.2.5 Firebird

SELECT "timestampDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p TimeStamp -- DateTime
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampDataType" IS NULL OR @p IS NOT NULL AND "timestampDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p TimeStamp -- DateTime
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampDataType" IS NULL OR @p IS NOT NULL AND "timestampDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampDataType" IS NULL OR @p IS NOT NULL AND "timestampDataType" = @p

-- Firebird.2.5 Firebird

SELECT "timestampDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p TimeStamp -- DateTime
SET     @p = CAST('2012-12-12 12:12:12' AS timestamp)

SELECT ID FROM "AllTypes" WHERE "timestampDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p TimeStamp -- DateTime
SET     @p = CAST('2012-12-12 12:12:12' AS timestamp)

SELECT ID FROM "AllTypes" WHERE "timestampDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p TimeStamp -- DateTime
SET     @p = CAST('2012-12-12 12:12:12' AS timestamp)

SELECT ID FROM "AllTypes" WHERE "timestampDataType" = @p

-- Firebird.2.5 Firebird

SELECT "charDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p Char -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "charDataType" IS NULL OR @p IS NOT NULL AND "charDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "charDataType" IS NULL OR @p IS NOT NULL AND "charDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "charDataType" IS NULL OR @p IS NOT NULL AND "charDataType" = @p

-- Firebird.2.5 Firebird

SELECT "charDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p Char(1) -- String
SET     @p = '1'

SELECT ID FROM "AllTypes" WHERE "charDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = '1'

SELECT ID FROM "AllTypes" WHERE "charDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT ID FROM "AllTypes" WHERE "charDataType" = @p

-- Firebird.2.5 Firebird

SELECT "varcharDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "varcharDataType" IS NULL OR @p IS NOT NULL AND "varcharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "varcharDataType" IS NULL OR @p IS NOT NULL AND "varcharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "varcharDataType" IS NULL OR @p IS NOT NULL AND "varcharDataType" = @p

-- Firebird.2.5 Firebird

SELECT "varcharDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p VarChar(3) -- String
SET     @p = '234'

SELECT ID FROM "AllTypes" WHERE "varcharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = '234'

SELECT ID FROM "AllTypes" WHERE "varcharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(3) -- String
SET     @p = '234'

SELECT ID FROM "AllTypes" WHERE "varcharDataType" = @p

-- Firebird.2.5 Firebird

SELECT "textDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.2.5 Firebird

SELECT "textDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p VarChar(3) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(3) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.2.5 Firebird

SELECT "ncharDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p Char -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "ncharDataType" IS NULL OR @p IS NOT NULL AND "ncharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "ncharDataType" IS NULL OR @p IS NOT NULL AND "ncharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "ncharDataType" IS NULL OR @p IS NOT NULL AND "ncharDataType" = @p

-- Firebird.2.5 Firebird

SELECT "ncharDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p Char(5) -- String
SET     @p = '23233'

SELECT ID FROM "AllTypes" WHERE "ncharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = '23233'

SELECT ID FROM "AllTypes" WHERE "ncharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(5) -- String
SET     @p = '23233'

SELECT ID FROM "AllTypes" WHERE "ncharDataType" = @p

-- Firebird.2.5 Firebird

SELECT "nvarcharDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "nvarcharDataType" IS NULL OR @p IS NOT NULL AND "nvarcharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "nvarcharDataType" IS NULL OR @p IS NOT NULL AND "nvarcharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "nvarcharDataType" IS NULL OR @p IS NOT NULL AND "nvarcharDataType" = @p

-- Firebird.2.5 Firebird

SELECT "nvarcharDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p VarChar(4) -- String
SET     @p = '3323'

SELECT ID FROM "AllTypes" WHERE "nvarcharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = '3323'

SELECT ID FROM "AllTypes" WHERE "nvarcharDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(4) -- String
SET     @p = '3323'

SELECT ID FROM "AllTypes" WHERE "nvarcharDataType" = @p

-- Firebird.2.5 Firebird

SELECT "textDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.2.5 Firebird

SELECT "textDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p VarChar(3) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(255) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar(3) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.2.5 Firebird

SELECT "blobDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.2.5 Firebird
DECLARE @p Binary
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "blobDataType" IS NULL OR @p IS NOT NULL AND "blobDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Binary
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "blobDataType" IS NULL OR @p IS NOT NULL AND "blobDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "blobDataType" IS NULL OR @p IS NOT NULL AND "blobDataType" = @p

-- Firebird.2.5 Firebird

SELECT "blobDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.2.5 Firebird
DECLARE @p Binary(5)
SET     @p = X'3132333435'

SELECT ID FROM "AllTypes" WHERE "blobDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Binary(5)
SET     @p = X'3132333435'

SELECT ID FROM "AllTypes" WHERE "blobDataType" = @p

-- Firebird.2.5 Firebird
DECLARE @p Binary(5)
SET     @p = X'3132333435'

SELECT ID FROM "AllTypes" WHERE "blobDataType" = @p

