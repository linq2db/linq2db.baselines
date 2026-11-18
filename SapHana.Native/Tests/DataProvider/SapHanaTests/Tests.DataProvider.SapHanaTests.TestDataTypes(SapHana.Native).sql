-- SapHana.Native SapHana
SELECT "bigintDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "bigintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p BigInt -- Int64
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "bigintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "bigintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "bigintDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p BigInt -- Int64
SET     @p = 123456789123456789

SELECT "ID" FROM "AllTypes" WHERE "bigintDataType" = :p

-- SapHana.Native SapHana
DECLARE @p BigInt -- Int64
SET     @p = 123456789123456789

SELECT "ID" FROM "AllTypes" WHERE "bigintDataType" = :p

-- SapHana.Native SapHana
DECLARE @p BigInt -- Int64
SET     @p = 123456789123456789

SELECT "ID" FROM "AllTypes" WHERE "bigintDataType" = :p

-- SapHana.Native SapHana
SELECT "smallintDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "smallintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "smallintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "smallintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "smallintDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p SmallInt -- Int16
SET     @p = 12345

SELECT "ID" FROM "AllTypes" WHERE "smallintDataType" = :p

-- SapHana.Native SapHana
DECLARE @p SmallInt -- Int16
SET     @p = 12345

SELECT "ID" FROM "AllTypes" WHERE "smallintDataType" = :p

-- SapHana.Native SapHana
DECLARE @p SmallInt -- Int16
SET     @p = 12345

SELECT "ID" FROM "AllTypes" WHERE "smallintDataType" = :p

-- SapHana.Native SapHana
SELECT "decimalDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p Decimal
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "decimalDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p Decimal(38, 10)
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "decimalDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "decimalDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "decimalDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p Decimal(14, 10)
SET     @p = 1234.5670000000

SELECT "ID" FROM "AllTypes" WHERE "decimalDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Decimal(38, 10)
SET     @p = 1234.5670000000

SELECT "ID" FROM "AllTypes" WHERE "decimalDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Decimal(14, 10)
SET     @p = 1234.5670000000

SELECT "ID" FROM "AllTypes" WHERE "decimalDataType" = :p

-- SapHana.Native SapHana
SELECT "smalldecimalDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p Decimal
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "smalldecimalDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p Decimal(38, 10)
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "smalldecimalDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "smalldecimalDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "smalldecimalDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p Decimal(6, 3)
SET     @p = 123.456

SELECT "ID" FROM "AllTypes" WHERE "smalldecimalDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Decimal(38, 10)
SET     @p = 123.456

SELECT "ID" FROM "AllTypes" WHERE "smalldecimalDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Decimal(6, 3)
SET     @p = 123.456

SELECT "ID" FROM "AllTypes" WHERE "smalldecimalDataType" = :p

-- SapHana.Native SapHana
SELECT "intDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "intDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "intDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "intDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "intDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 123456789

SELECT "ID" FROM "AllTypes" WHERE "intDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 123456789

SELECT "ID" FROM "AllTypes" WHERE "intDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 123456789

SELECT "ID" FROM "AllTypes" WHERE "intDataType" = :p

-- SapHana.Native SapHana
SELECT "tinyintDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p TinyInt -- Byte
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "tinyintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p TinyInt -- Byte
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "tinyintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "tinyintDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "tinyintDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p TinyInt -- Byte
SET     @p = 123

SELECT "ID" FROM "AllTypes" WHERE "tinyintDataType" = :p

-- SapHana.Native SapHana
DECLARE @p TinyInt -- Byte
SET     @p = 123

SELECT "ID" FROM "AllTypes" WHERE "tinyintDataType" = :p

-- SapHana.Native SapHana
DECLARE @p TinyInt -- Byte
SET     @p = 123

SELECT "ID" FROM "AllTypes" WHERE "tinyintDataType" = :p

-- SapHana.Native SapHana
SELECT "floatDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p Double
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "floatDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p Double
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "floatDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "floatDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "floatDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p Double
SET     @p = 1234.567

SELECT "ID" FROM "AllTypes" WHERE "floatDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Double
SET     @p = 1234.567

SELECT "ID" FROM "AllTypes" WHERE "floatDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Double
SET     @p = 1234.567

SELECT "ID" FROM "AllTypes" WHERE "floatDataType" = :p

-- SapHana.Native SapHana
SELECT "dateDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p Date
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "dateDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "dateDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "dateDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "dateDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p Date
SET     @p = TIMESTAMP '2012-12-12 00:00:00.0000000'

SELECT "ID" FROM "AllTypes" WHERE "dateDataType" = :p

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = TIMESTAMP '2012-12-12 00:00:00.0000000'

SELECT "ID" FROM "AllTypes" WHERE "dateDataType" = :p

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = TIMESTAMP '2012-12-12 00:00:00.0000000'

SELECT "ID" FROM "AllTypes" WHERE "dateDataType" = :p

-- SapHana.Native SapHana
SELECT "timeDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p Time
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "timeDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p Time
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "timeDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "timeDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "timeDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p Time
SET     @p = 12:12:12

SELECT "ID" FROM "AllTypes" WHERE "timeDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Time
SET     @p = 12:12:12

SELECT "ID" FROM "AllTypes" WHERE "timeDataType" = :p

-- SapHana.Native SapHana
DECLARE @p Time
SET     @p = 12:12:12

SELECT "ID" FROM "AllTypes" WHERE "timeDataType" = :p

-- SapHana.Native SapHana
SELECT "seconddateDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "seconddateDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "seconddateDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "seconddateDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "seconddateDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2012-12-12 12:12:12.0000000'

SELECT "ID" FROM "AllTypes" WHERE "seconddateDataType" = :p

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = TIMESTAMP '2012-12-12 12:12:12.0000000'

SELECT "ID" FROM "AllTypes" WHERE "seconddateDataType" = :p

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = TIMESTAMP '2012-12-12 12:12:12.0000000'

SELECT "ID" FROM "AllTypes" WHERE "seconddateDataType" = :p

-- SapHana.Native SapHana
SELECT "timestampDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "timestampDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "timestampDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "timestampDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "timestampDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2012-12-12 12:12:12.1230000'

SELECT "ID" FROM "AllTypes" WHERE "timestampDataType" = :p

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = TIMESTAMP '2012-12-12 12:12:12.1230000'

SELECT "ID" FROM "AllTypes" WHERE "timestampDataType" = :p

-- SapHana.Native SapHana
DECLARE @p TimeStamp -- DateTime2
SET     @p = TIMESTAMP '2012-12-12 12:12:12.1230000'

SELECT "ID" FROM "AllTypes" WHERE "timestampDataType" = :p

-- SapHana.Native SapHana
SELECT "charDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p VarChar -- AnsiStringFixedLength
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- StringFixedLength
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "charDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p VarChar -- AnsiStringFixedLength
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- StringFixedLength
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar -- StringFixedLength
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
SELECT "charDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p VarChar -- AnsiStringFixedLength
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "charDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p VarChar(1) -- AnsiStringFixedLength
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
SELECT "charDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p NVarChar -- StringFixedLength
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "charDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "charDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- StringFixedLength
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT "ID" FROM "AllTypes" WHERE "charDataType" = :p

-- SapHana.Native SapHana
SELECT "varcharDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p VarChar -- AnsiString
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "varcharDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p VarChar(3) -- AnsiString
SET     @p = 'bcd'

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = 'bcd'

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(3) -- String
SET     @p = 'bcd'

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" = :p

-- SapHana.Native SapHana
SELECT "varcharDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "varcharDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p NVarChar(3) -- String
SET     @p = 'bcd'

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = 'bcd'

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(3) -- String
SET     @p = 'bcd'

SELECT "ID" FROM "AllTypes" WHERE "varcharDataType" = :p

-- SapHana.Native SapHana
SELECT "shorttextDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p Text -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "shorttextDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "shorttextDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "shorttextDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "shorttextDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p Text(3) -- String
SET     @p = 'def'

SELECT "ID" FROM "AllTypes" WHERE "shorttextDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = 'def'

SELECT "ID" FROM "AllTypes" WHERE "shorttextDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(3) -- String
SET     @p = 'def'

SELECT "ID" FROM "AllTypes" WHERE "shorttextDataType" = :p

-- SapHana.Native SapHana
SELECT "ncharDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p NVarChar -- StringFixedLength
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "ncharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- StringFixedLength
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "ncharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "ncharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "ncharDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p NVarChar -- StringFixedLength
SET     @p = 'ą'

SELECT "ID" FROM "AllTypes" WHERE "ncharDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- StringFixedLength
SET     @p = 'ą'

SELECT "ID" FROM "AllTypes" WHERE "ncharDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar -- StringFixedLength
SET     @p = 'ą'

SELECT "ID" FROM "AllTypes" WHERE "ncharDataType" = :p

-- SapHana.Native SapHana
SELECT "nvarcharDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "nvarcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "nvarcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "nvarcharDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "nvarcharDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p NVarChar(6) -- String
SET     @p = 'ąčęėįš'

SELECT "ID" FROM "AllTypes" WHERE "nvarcharDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = 'ąčęėįš'

SELECT "ID" FROM "AllTypes" WHERE "nvarcharDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(6) -- String
SET     @p = 'ąčęėįš'

SELECT "ID" FROM "AllTypes" WHERE "nvarcharDataType" = :p

-- SapHana.Native SapHana
SELECT "alphanumDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p Text -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "alphanumDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "alphanumDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "alphanumDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "alphanumDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p Text(11) -- String
SET     @p = 'qwert123QWE'

SELECT "ID" FROM "AllTypes" WHERE "alphanumDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(255) -- String
SET     @p = 'qwert123QWE'

SELECT "ID" FROM "AllTypes" WHERE "alphanumDataType" = :p

-- SapHana.Native SapHana
DECLARE @p NVarChar(11) -- String
SET     @p = 'qwert123QWE'

SELECT "ID" FROM "AllTypes" WHERE "alphanumDataType" = :p

-- SapHana.Native SapHana
SELECT "binaryDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "binaryDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" = :p

-- SapHana.Native SapHana
SELECT "binaryDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "binaryDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "binaryDataType" = :p

-- SapHana.Native SapHana
SELECT "varbinaryDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "varbinaryDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

-- SapHana.Native SapHana
SELECT "varbinaryDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "varbinaryDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

-- SapHana.Native SapHana
SELECT "varbinaryDataType" FROM "AllTypes" WHERE "ID" = 1

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" IS NULL AND :p IS NULL

-- SapHana.Native SapHana
SELECT "varbinaryDataType" FROM "AllTypes" WHERE "ID" = 2

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

-- SapHana.Native SapHana
DECLARE @p VarBinary(8) -- Binary
SET     @p = x'6162636465666768'

SELECT "ID" FROM "AllTypes" WHERE "varbinaryDataType" = :p

