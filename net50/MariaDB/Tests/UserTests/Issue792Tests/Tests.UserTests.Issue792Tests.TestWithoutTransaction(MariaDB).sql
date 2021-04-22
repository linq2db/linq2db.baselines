BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`AllTypes` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE, ROUTINE_DEFINITION FROM INFORMATION_SCHEMA.routines WHERE ROUTINE_SCHEMA = database()

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, PARAMETER_MODE, ORDINAL_POSITION, PARAMETER_NAME, NUMERIC_PRECISION, NUMERIC_SCALE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, DTD_IDENTIFIER FROM INFORMATION_SCHEMA.parameters WHERE SPECIFIC_SCHEMA = database()

BeforeExecute
-- MariaDB MySql.Official MySql

`testdata`.`AddIssue792Record`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @VarChar255 VarChar(255) -- AnsiString
SET     @VarChar255 = NULL
DECLARE @VarChar1 VarChar(1) -- AnsiString
SET     @VarChar1 = NULL
DECLARE @Char255 String(255) -- AnsiStringFixedLength
SET     @Char255 = NULL
DECLARE @Char1 String(1) -- AnsiStringFixedLength
SET     @Char1 = NULL
DECLARE @VarBinary255 Blob(255) -- Binary
SET     @VarBinary255 = NULL
DECLARE @Binary255 Decimal(255) -- AnsiString
SET     @Binary255 = NULL
DECLARE @TinyBlob Blob(255) -- Binary
SET     @TinyBlob = NULL
DECLARE @Blob Blob(65535) -- Binary
SET     @Blob = NULL
DECLARE @MediumBlob Blob(16777215) -- Binary
SET     @MediumBlob = NULL
DECLARE @LongBlob Blob(2147483647) -- Binary
SET     @LongBlob = NULL
DECLARE @TinyText Decimal(255) -- AnsiString
SET     @TinyText = NULL
DECLARE @Text Decimal(65535) -- AnsiString
SET     @Text = NULL
DECLARE @MediumText Decimal(16777215) -- AnsiString
SET     @MediumText = NULL
DECLARE @LongText Decimal(2147483647) -- AnsiString
SET     @LongText = NULL
DECLARE @Date DateTime
SET     @Date = NULL
DECLARE @DateTime DateTime
SET     @DateTime = NULL
DECLARE @TimeStamp DateTime
SET     @TimeStamp = NULL
DECLARE @Time Time
SET     @Time = NULL
DECLARE @Json Decimal(2147483647) -- AnsiString
SET     @Json = NULL
DECLARE @TinyInt Byte -- SByte
SET     @TinyInt = NULL
DECLARE @TinyIntUnsigned UByte -- Byte
SET     @TinyIntUnsigned = NULL
DECLARE @SmallInt Int16
SET     @SmallInt = NULL
DECLARE @SmallIntUnsigned UInt16
SET     @SmallIntUnsigned = NULL
DECLARE @MediumInt Int32
SET     @MediumInt = NULL
DECLARE @MediumIntUnsigned UInt32
SET     @MediumIntUnsigned = NULL
DECLARE @Int Int32
SET     @Int = NULL
DECLARE @IntUnsigned UInt32
SET     @IntUnsigned = NULL
DECLARE @BigInt Int64
SET     @BigInt = NULL
DECLARE @BigIntUnsigned UInt64
SET     @BigIntUnsigned = NULL
DECLARE @Decimal Decimal
SET     @Decimal = NULL
DECLARE @Float Float -- Single
SET     @Float = NULL
DECLARE @Double Double
SET     @Double = NULL
DECLARE @Boolean Byte -- SByte
SET     @Boolean = NULL
DECLARE @Bit1 UInt64
SET     @Bit1 = NULL
DECLARE @Bit8 UInt64
SET     @Bit8 = NULL
DECLARE @Bit10 UInt64
SET     @Bit10 = NULL
DECLARE @Bit16 UInt64
SET     @Bit16 = NULL
DECLARE @Bit32 UInt64
SET     @Bit32 = NULL
DECLARE @Bit64 UInt64
SET     @Bit64 = NULL
DECLARE @Enum VarChar(3) -- AnsiString
SET     @Enum = NULL
DECLARE @Set VarChar(3) -- AnsiString
SET     @Set = NULL
DECLARE @Year Int32
SET     @Year = NULL
DECLARE @Geometry Decimal -- AnsiString
SET     @Geometry = NULL
DECLARE @Point Decimal -- AnsiString
SET     @Point = NULL
DECLARE @LineString Decimal -- AnsiString
SET     @LineString = NULL
DECLARE @Polygon Decimal -- AnsiString
SET     @Polygon = NULL
DECLARE @MultiPoint Decimal -- AnsiString
SET     @MultiPoint = NULL
DECLARE @MultiLineString Decimal -- AnsiString
SET     @MultiLineString = NULL
DECLARE @MultiPolygon Decimal -- AnsiString
SET     @MultiPolygon = NULL
DECLARE @GeometryCollection Decimal -- AnsiString
SET     @GeometryCollection = NULL

`testdata`.`Issue2313Parameters`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @VarChar255 VarChar(255) -- AnsiString
SET     @VarChar255 = NULL
DECLARE @VarChar1 VarChar(1) -- AnsiString
SET     @VarChar1 = NULL
DECLARE @Char255 String(255) -- AnsiStringFixedLength
SET     @Char255 = NULL
DECLARE @Char1 String(1) -- AnsiStringFixedLength
SET     @Char1 = NULL
DECLARE @VarBinary255 Blob(255) -- Binary
SET     @VarBinary255 = NULL
DECLARE @Binary255 Decimal(255) -- AnsiString
SET     @Binary255 = NULL
DECLARE @TinyBlob Blob(255) -- Binary
SET     @TinyBlob = NULL
DECLARE @Blob Blob(65535) -- Binary
SET     @Blob = NULL
DECLARE @MediumBlob Blob(16777215) -- Binary
SET     @MediumBlob = NULL
DECLARE @LongBlob Blob(2147483647) -- Binary
SET     @LongBlob = NULL
DECLARE @TinyText Decimal(255) -- AnsiString
SET     @TinyText = NULL
DECLARE @Text Decimal(65535) -- AnsiString
SET     @Text = NULL
DECLARE @MediumText Decimal(16777215) -- AnsiString
SET     @MediumText = NULL
DECLARE @LongText Decimal(2147483647) -- AnsiString
SET     @LongText = NULL
DECLARE @Date DateTime
SET     @Date = NULL
DECLARE @DateTime DateTime
SET     @DateTime = NULL
DECLARE @TimeStamp DateTime
SET     @TimeStamp = NULL
DECLARE @Time Time
SET     @Time = NULL
DECLARE @TinyInt Byte -- SByte
SET     @TinyInt = NULL
DECLARE @TinyIntUnsigned UByte -- Byte
SET     @TinyIntUnsigned = NULL
DECLARE @SmallInt Int16
SET     @SmallInt = NULL
DECLARE @SmallIntUnsigned UInt16
SET     @SmallIntUnsigned = NULL
DECLARE @MediumInt Int32
SET     @MediumInt = NULL
DECLARE @MediumIntUnsigned UInt32
SET     @MediumIntUnsigned = NULL
DECLARE @Int Int32
SET     @Int = NULL
DECLARE @IntUnsigned UInt32
SET     @IntUnsigned = NULL
DECLARE @BigInt Int64
SET     @BigInt = NULL
DECLARE @BigIntUnsigned UInt64
SET     @BigIntUnsigned = NULL
DECLARE @Decimal Decimal
SET     @Decimal = NULL
DECLARE @Float Float -- Single
SET     @Float = NULL
DECLARE @Double Double
SET     @Double = NULL
DECLARE @Boolean Byte -- SByte
SET     @Boolean = NULL
DECLARE @Bit1 UInt64
SET     @Bit1 = NULL
DECLARE @Bit8 UInt64
SET     @Bit8 = NULL
DECLARE @Bit10 UInt64
SET     @Bit10 = NULL
DECLARE @Bit16 UInt64
SET     @Bit16 = NULL
DECLARE @Bit32 UInt64
SET     @Bit32 = NULL
DECLARE @Bit64 UInt64
SET     @Bit64 = NULL
DECLARE @Enum VarChar(3) -- AnsiString
SET     @Enum = NULL
DECLARE @Set VarChar(3) -- AnsiString
SET     @Set = NULL
DECLARE @Year Int32
SET     @Year = NULL

`testdata`.`Issue2313Results`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @aInParam VarChar(256) -- AnsiString
SET     @aInParam = NULL
DECLARE @aOutParam Byte -- SByte
SET     @aOutParam = NULL

`testdata`.`TestOutputParametersWithoutTableProcedure`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @param3 Int32
SET     @param3 = NULL
DECLARE @param2 Int32
SET     @param2 = NULL
DECLARE @param1 Int32
SET     @param1 = NULL

`testdata`.`TestProcedure`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`AllTypes` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`char20DataType` = 'issue792'

