﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE, ROUTINE_DEFINITION FROM INFORMATION_SCHEMA.routines WHERE ROUTINE_SCHEMA = database()

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, PARAMETER_MODE, ORDINAL_POSITION, PARAMETER_NAME, NUMERIC_PRECISION, NUMERIC_SCALE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, DTD_IDENTIFIER FROM INFORMATION_SCHEMA.parameters WHERE SPECIFIC_SCHEMA = database()

BeforeExecute
BeginTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

`testdataconnector`.`AddIssue792Record`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
DECLARE @Binary255 VarChar(255) -- String
SET     @Binary255 = NULL
DECLARE @TinyBlob Blob(255) -- Binary
SET     @TinyBlob = NULL
DECLARE @Blob Blob(65535) -- Binary
SET     @Blob = NULL
DECLARE @MediumBlob Blob(16777215) -- Binary
SET     @MediumBlob = NULL
DECLARE @LongBlob Blob(2147483647) -- Binary
SET     @LongBlob = NULL
DECLARE @TinyText VarChar(255) -- String
SET     @TinyText = NULL
DECLARE @Text VarChar(65535) -- String
SET     @Text = NULL
DECLARE @MediumText VarChar(16777215) -- String
SET     @MediumText = NULL
DECLARE @LongText VarChar(2147483647) -- String
SET     @LongText = NULL
DECLARE @Date Datetime -- DateTime
SET     @Date = NULL
DECLARE @DateTime Datetime -- DateTime
SET     @DateTime = NULL
DECLARE @TimeStamp Datetime -- DateTime
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
DECLARE @Decimal NewDecimal -- Decimal
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
DECLARE @Geometry VarChar -- String
SET     @Geometry = NULL
DECLARE @Point VarChar -- String
SET     @Point = NULL
DECLARE @LineString VarChar -- String
SET     @LineString = NULL
DECLARE @Polygon VarChar -- String
SET     @Polygon = NULL
DECLARE @MultiPoint VarChar -- String
SET     @MultiPoint = NULL
DECLARE @MultiLineString VarChar -- String
SET     @MultiLineString = NULL
DECLARE @MultiPolygon VarChar -- String
SET     @MultiPolygon = NULL
DECLARE @GeometryCollection VarChar -- String
SET     @GeometryCollection = NULL

`testdataconnector`.`Issue2313Parameters`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
DECLARE @Binary255 VarChar(255) -- String
SET     @Binary255 = NULL
DECLARE @TinyBlob Blob(255) -- Binary
SET     @TinyBlob = NULL
DECLARE @Blob Blob(65535) -- Binary
SET     @Blob = NULL
DECLARE @MediumBlob Blob(16777215) -- Binary
SET     @MediumBlob = NULL
DECLARE @LongBlob Blob(2147483647) -- Binary
SET     @LongBlob = NULL
DECLARE @TinyText VarChar(255) -- String
SET     @TinyText = NULL
DECLARE @Text VarChar(65535) -- String
SET     @Text = NULL
DECLARE @MediumText VarChar(16777215) -- String
SET     @MediumText = NULL
DECLARE @LongText VarChar(2147483647) -- String
SET     @LongText = NULL
DECLARE @Date Datetime -- DateTime
SET     @Date = NULL
DECLARE @DateTime Datetime -- DateTime
SET     @DateTime = NULL
DECLARE @TimeStamp Datetime -- DateTime
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
DECLARE @Decimal NewDecimal -- Decimal
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
DECLARE @Geometry VarChar -- String
SET     @Geometry = NULL
DECLARE @Point VarChar -- String
SET     @Point = NULL
DECLARE @LineString VarChar -- String
SET     @LineString = NULL
DECLARE @Polygon VarChar -- String
SET     @Polygon = NULL
DECLARE @MultiPoint VarChar -- String
SET     @MultiPoint = NULL
DECLARE @MultiLineString VarChar -- String
SET     @MultiLineString = NULL
DECLARE @MultiPolygon VarChar -- String
SET     @MultiPolygon = NULL
DECLARE @GeometryCollection VarChar -- String
SET     @GeometryCollection = NULL
DECLARE @Year Int32
SET     @Year = NULL

`testdataconnector`.`Issue2313Results`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @aInParam VarChar(256) -- AnsiString
SET     @aInParam = NULL
DECLARE @aOutParam Byte -- SByte
SET     @aOutParam = NULL

`testdataconnector`.`TestOutputParametersWithoutTableProcedure`

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @param3 Int32
SET     @param3 = NULL
DECLARE @param2 Int32
SET     @param2 = NULL
DECLARE @param1 Int32
SET     @param1 = NULL

`testdataconnector`.`TestProcedure`

BeforeExecute
RollbackTransaction
