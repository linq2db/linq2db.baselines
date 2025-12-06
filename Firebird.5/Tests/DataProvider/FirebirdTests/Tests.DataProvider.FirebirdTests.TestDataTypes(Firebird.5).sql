-- Firebird.5 Firebird4

SELECT "bigintDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "bigintDataType" IS NULL OR @p IS NOT NULL AND "bigintDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "bigintDataType" IS NULL OR @p IS NOT NULL AND "bigintDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "bigintDataType" IS NULL OR @p IS NOT NULL AND "bigintDataType" = @p

-- Firebird.5 Firebird4

SELECT "bigintDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM "AllTypes" WHERE "bigintDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM "AllTypes" WHERE "bigintDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p BigInt -- Int64
SET     @p = 1000000

SELECT ID FROM "AllTypes" WHERE "bigintDataType" = @p

-- Firebird.5 Firebird4

SELECT "smallintDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "smallintDataType" IS NULL OR @p IS NOT NULL AND "smallintDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "smallintDataType" IS NULL OR @p IS NOT NULL AND "smallintDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "smallintDataType" IS NULL OR @p IS NOT NULL AND "smallintDataType" = @p

-- Firebird.5 Firebird4

SELECT "smallintDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM "AllTypes" WHERE "smallintDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM "AllTypes" WHERE "smallintDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM "AllTypes" WHERE "smallintDataType" = @p

-- Firebird.5 Firebird4

SELECT "decimalDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decimalDataType" IS NULL OR @p IS NOT NULL AND "decimalDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal(18, 10)
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decimalDataType" IS NULL OR @p IS NOT NULL AND "decimalDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decimalDataType" IS NULL OR @p IS NOT NULL AND "decimalDataType" = @p

-- Firebird.5 Firebird4

SELECT "decimalDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Decimal(7, 0)
SET     @p = 2222222

SELECT ID FROM "AllTypes" WHERE "decimalDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal(18, 10)
SET     @p = 2222222

SELECT ID FROM "AllTypes" WHERE "decimalDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal(7, 0)
SET     @p = 2222222

SELECT ID FROM "AllTypes" WHERE "decimalDataType" = @p

-- Firebird.5 Firebird4

SELECT "intDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "intDataType" IS NULL OR @p IS NOT NULL AND "intDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "intDataType" IS NULL OR @p IS NOT NULL AND "intDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "intDataType" IS NULL OR @p IS NOT NULL AND "intDataType" = @p

-- Firebird.5 Firebird4

SELECT "intDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM "AllTypes" WHERE "intDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM "AllTypes" WHERE "intDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM "AllTypes" WHERE "intDataType" = @p

-- Firebird.5 Firebird4

SELECT "floatDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Float -- Single
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "floatDataType" IS NULL OR @p IS NOT NULL AND "floatDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Float -- Single
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "floatDataType" IS NULL OR @p IS NOT NULL AND "floatDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "floatDataType" IS NULL OR @p IS NOT NULL AND "floatDataType" = @p

-- Firebird.5 Firebird4

SELECT "floatDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Float -- Single
SET     @p = 20.3099995

SELECT ID FROM "AllTypes" WHERE "floatDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Float -- Single
SET     @p = 20.3099995

SELECT ID FROM "AllTypes" WHERE "floatDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Float -- Single
SET     @p = 20.3099995

SELECT ID FROM "AllTypes" WHERE "floatDataType" = @p

-- Firebird.5 Firebird4

SELECT "realDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Double
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "realDataType" IS NULL OR @p IS NOT NULL AND "realDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Double
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "realDataType" IS NULL OR @p IS NOT NULL AND "realDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "realDataType" IS NULL OR @p IS NOT NULL AND "realDataType" = @p

-- Firebird.5 Firebird4

SELECT "realDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Double
SET     @p = 16

SELECT ID FROM "AllTypes" WHERE "realDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Double
SET     @p = 16

SELECT ID FROM "AllTypes" WHERE "realDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Double
SET     @p = 16

SELECT ID FROM "AllTypes" WHERE "realDataType" = @p

-- Firebird.5 Firebird4

SELECT "timestampDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p TimeStamp -- DateTime
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampDataType" IS NULL OR @p IS NOT NULL AND "timestampDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p TimeStamp -- DateTime
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampDataType" IS NULL OR @p IS NOT NULL AND "timestampDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampDataType" IS NULL OR @p IS NOT NULL AND "timestampDataType" = @p

-- Firebird.5 Firebird4

SELECT "timestampDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p TimeStamp -- DateTime
SET     @p = CAST('2012-12-12 12:12:12' AS timestamp)

SELECT ID FROM "AllTypes" WHERE "timestampDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p TimeStamp -- DateTime
SET     @p = CAST('2012-12-12 12:12:12' AS timestamp)

SELECT ID FROM "AllTypes" WHERE "timestampDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p TimeStamp -- DateTime
SET     @p = CAST('2012-12-12 12:12:12' AS timestamp)

SELECT ID FROM "AllTypes" WHERE "timestampDataType" = @p

-- Firebird.5 Firebird4

SELECT "charDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Char -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "charDataType" IS NULL OR @p IS NOT NULL AND "charDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "charDataType" IS NULL OR @p IS NOT NULL AND "charDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "charDataType" IS NULL OR @p IS NOT NULL AND "charDataType" = @p

-- Firebird.5 Firebird4

SELECT "charDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Char(1) -- String
SET     @p = '1'

SELECT ID FROM "AllTypes" WHERE "charDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = '1'

SELECT ID FROM "AllTypes" WHERE "charDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT ID FROM "AllTypes" WHERE "charDataType" = @p

-- Firebird.5 Firebird4

SELECT "varcharDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "varcharDataType" IS NULL OR @p IS NOT NULL AND "varcharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "varcharDataType" IS NULL OR @p IS NOT NULL AND "varcharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "varcharDataType" IS NULL OR @p IS NOT NULL AND "varcharDataType" = @p

-- Firebird.5 Firebird4

SELECT "varcharDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p VarChar(3) -- String
SET     @p = '234'

SELECT ID FROM "AllTypes" WHERE "varcharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = '234'

SELECT ID FROM "AllTypes" WHERE "varcharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(3) -- String
SET     @p = '234'

SELECT ID FROM "AllTypes" WHERE "varcharDataType" = @p

-- Firebird.5 Firebird4

SELECT "textDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.5 Firebird4

SELECT "textDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p VarChar(3) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(3) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.5 Firebird4

SELECT "ncharDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Char -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "ncharDataType" IS NULL OR @p IS NOT NULL AND "ncharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "ncharDataType" IS NULL OR @p IS NOT NULL AND "ncharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "ncharDataType" IS NULL OR @p IS NOT NULL AND "ncharDataType" = @p

-- Firebird.5 Firebird4

SELECT "ncharDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Char(5) -- String
SET     @p = '23233'

SELECT ID FROM "AllTypes" WHERE "ncharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = '23233'

SELECT ID FROM "AllTypes" WHERE "ncharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(5) -- String
SET     @p = '23233'

SELECT ID FROM "AllTypes" WHERE "ncharDataType" = @p

-- Firebird.5 Firebird4

SELECT "nvarcharDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "nvarcharDataType" IS NULL OR @p IS NOT NULL AND "nvarcharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "nvarcharDataType" IS NULL OR @p IS NOT NULL AND "nvarcharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "nvarcharDataType" IS NULL OR @p IS NOT NULL AND "nvarcharDataType" = @p

-- Firebird.5 Firebird4

SELECT "nvarcharDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p VarChar(4) -- String
SET     @p = '3323'

SELECT ID FROM "AllTypes" WHERE "nvarcharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = '3323'

SELECT ID FROM "AllTypes" WHERE "nvarcharDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(4) -- String
SET     @p = '3323'

SELECT ID FROM "AllTypes" WHERE "nvarcharDataType" = @p

-- Firebird.5 Firebird4

SELECT "textDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "textDataType" IS NULL OR @p IS NOT NULL AND "textDataType" = @p

-- Firebird.5 Firebird4

SELECT "textDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p VarChar(3) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(255) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar(3) -- String
SET     @p = '567'

SELECT ID FROM "AllTypes" WHERE "textDataType" = @p

-- Firebird.5 Firebird4

SELECT "blobDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Binary
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "blobDataType" IS NULL OR @p IS NOT NULL AND "blobDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Binary
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "blobDataType" IS NULL OR @p IS NOT NULL AND "blobDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "blobDataType" IS NULL OR @p IS NOT NULL AND "blobDataType" = @p

-- Firebird.5 Firebird4

SELECT "blobDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Binary(5)
SET     @p = X'3132333435'

SELECT ID FROM "AllTypes" WHERE "blobDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Binary(5)
SET     @p = X'3132333435'

SELECT ID FROM "AllTypes" WHERE "blobDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Binary(5)
SET     @p = X'3132333435'

SELECT ID FROM "AllTypes" WHERE "blobDataType" = @p

-- Firebird.5 Firebird4

SELECT "decfloat16DataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decfloat16DataType" IS NULL OR @p IS NOT NULL AND "decfloat16DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decfloat16DataType" IS NULL OR @p IS NOT NULL AND "decfloat16DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decfloat16DataType" IS NULL OR @p IS NOT NULL AND "decfloat16DataType" = @p

-- Firebird.5 Firebird4

SELECT "decfloat16DataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = 1234567890123456E-6

SELECT ID FROM "AllTypes" WHERE "decfloat16DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = 1234567890123456E-6

SELECT ID FROM "AllTypes" WHERE "decfloat16DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = 1234567890123456E-6

SELECT ID FROM "AllTypes" WHERE "decfloat16DataType" = @p

-- Firebird.5 Firebird4

SELECT "decfloat34DataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decfloat34DataType" IS NULL OR @p IS NOT NULL AND "decfloat34DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decfloat34DataType" IS NULL OR @p IS NOT NULL AND "decfloat34DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "decfloat34DataType" IS NULL OR @p IS NOT NULL AND "decfloat34DataType" = @p

-- Firebird.5 Firebird4

SELECT "decfloat34DataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = 1234567890123456789012345678901234E-4

SELECT ID FROM "AllTypes" WHERE "decfloat34DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = 1234567890123456789012345678901234E-4

SELECT ID FROM "AllTypes" WHERE "decfloat34DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Decimal
SET     @p = 1234567890123456789012345678901234E-4

SELECT ID FROM "AllTypes" WHERE "decfloat34DataType" = @p

-- Firebird.5 Firebird4

SELECT "int128DataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "int128DataType" IS NULL OR @p IS NOT NULL AND "int128DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "int128DataType" IS NULL OR @p IS NOT NULL AND "int128DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "int128DataType" IS NULL OR @p IS NOT NULL AND "int128DataType" = @p

-- Firebird.5 Firebird4

SELECT "int128DataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p Int128 -- Object
SET     @p = 170141183460469231731687303715884105727

SELECT ID FROM "AllTypes" WHERE "int128DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Int128 -- Object
SET     @p = 170141183460469231731687303715884105727

SELECT ID FROM "AllTypes" WHERE "int128DataType" = @p

-- Firebird.5 Firebird4
DECLARE @p Int128 -- Object
SET     @p = 170141183460469231731687303715884105727

SELECT ID FROM "AllTypes" WHERE "int128DataType" = @p

-- Firebird.5 Firebird4

SELECT "timestampTZDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p TimeStampTZ -- Object
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampTZDataType" IS NULL OR @p IS NOT NULL AND "timestampTZDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p TimeStampTZ -- Object
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampTZDataType" IS NULL OR @p IS NOT NULL AND "timestampTZDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timestampTZDataType" IS NULL OR @p IS NOT NULL AND "timestampTZDataType" = @p

-- Firebird.5 Firebird4

SELECT "timestampTZDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p TimeStampTZ -- Object
SET     @p = 12/12/2020 11:24:35 Europe/Andorra

SELECT ID FROM "AllTypes" WHERE "timestampTZDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p TimeStampTZ -- Object
SET     @p = 12/12/2020 11:24:35 Europe/Andorra

SELECT ID FROM "AllTypes" WHERE "timestampTZDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p TimeStampTZ -- Object
SET     @p = 12/12/2020 11:24:35 Europe/Andorra

SELECT ID FROM "AllTypes" WHERE "timestampTZDataType" = @p

-- Firebird.5 Firebird4

SELECT "timeTZDataType" FROM "AllTypes" WHERE ID = 1

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timeTZDataType" IS NULL OR @p IS NOT NULL AND "timeTZDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timeTZDataType" IS NULL OR @p IS NOT NULL AND "timeTZDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT ID FROM "AllTypes" WHERE @p IS NULL AND "timeTZDataType" IS NULL OR @p IS NOT NULL AND "timeTZDataType" = @p

-- Firebird.5 Firebird4

SELECT "timeTZDataType" FROM "AllTypes" WHERE ID = 2

-- Firebird.5 Firebird4
DECLARE @p TimeTZ -- Object
SET     @p = 01:13:00 Australia/Hobart

SELECT ID FROM "AllTypes" WHERE "timeTZDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p TimeTZ -- Object
SET     @p = 01:13:00 Australia/Hobart

SELECT ID FROM "AllTypes" WHERE "timeTZDataType" = @p

-- Firebird.5 Firebird4
DECLARE @p TimeTZ -- Object
SET     @p = 01:13:00 Australia/Hobart

SELECT ID FROM "AllTypes" WHERE "timeTZDataType" = @p

