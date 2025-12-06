-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		TABLE_SCHEMA,
		TABLE_NAME,
		TABLE_TYPE,
		TABLE_COMMENT
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_SCHEMA = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


			SELECT
					CONCAT(lower(k.CONSTRAINT_SCHEMA),'..',k.TABLE_NAME) as TableID,
					k.CONSTRAINT_NAME                                    as PrimaryKeyName,
					k.COLUMN_NAME                                        as ColumnName,
					k.ORDINAL_POSITION                                   as Ordinal
				FROM
					INFORMATION_SCHEMA.KEY_COLUMN_USAGE k
					JOIN
						INFORMATION_SCHEMA.TABLE_CONSTRAINTS c
					ON
						k.CONSTRAINT_CATALOG = c.CONSTRAINT_CATALOG AND
						k.CONSTRAINT_SCHEMA  = c.CONSTRAINT_SCHEMA AND
						k.CONSTRAINT_NAME    = c.CONSTRAINT_NAME AND
						k.TABLE_NAME         = c.TABLE_NAME
				WHERE
					c.CONSTRAINT_TYPE   ='PRIMARY KEY' AND
					c.CONSTRAINT_SCHEMA = database()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		DATA_TYPE,
		COLUMN_TYPE,
		TABLE_SCHEMA,
		TABLE_NAME,
		COLUMN_NAME,
		IS_NULLABLE,
		ORDINAL_POSITION,
		CHARACTER_MAXIMUM_LENGTH,
		NUMERIC_PRECISION,
		NUMERIC_SCALE,
		EXTRA,
		COLUMN_COMMENT
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_SCHEMA = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		c.TABLE_SCHEMA,
		c.TABLE_NAME,
		c.CONSTRAINT_NAME,
		c.COLUMN_NAME,
		c.REFERENCED_TABLE_SCHEMA,
		c.REFERENCED_TABLE_NAME,
		c.REFERENCED_COLUMN_NAME,
		c.ORDINAL_POSITION
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
		INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
			ON c.CONSTRAINT_SCHEMA    = tc.CONSTRAINT_SCHEMA
				AND c.CONSTRAINT_NAME = tc.CONSTRAINT_NAME
				AND c.TABLE_SCHEMA    = tc.TABLE_SCHEMA
				AND c.TABLE_NAME      = tc.TABLE_NAME
	WHERE tc.CONSTRAINT_TYPE = 'FOREIGN KEY'
		AND c.TABLE_SCHEMA   = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE, ROUTINE_DEFINITION, ROUTINE_COMMENT FROM INFORMATION_SCHEMA.routines WHERE ROUTINE_TYPE IN ('PROCEDURE', 'FUNCTION') AND ROUTINE_SCHEMA = database()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, PARAMETER_MODE, ORDINAL_POSITION, PARAMETER_NAME, NUMERIC_PRECISION, NUMERIC_SCALE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, DTD_IDENTIFIER FROM INFORMATION_SCHEMA.parameters WHERE SPECIFIC_SCHEMA = database()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

`testdataconnector`.`AddIssue792Record`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @VarCharDefault VarChar(255) -- AnsiString
SET     @VarCharDefault = NULL
DECLARE @VarChar1 VarChar(1) -- AnsiString
SET     @VarChar1 = NULL
DECLARE @Char255 String(255) -- AnsiStringFixedLength
SET     @Char255 = NULL
DECLARE @Char1 String(1) -- AnsiStringFixedLength
SET     @Char1 = NULL
DECLARE @VarBinary255 Blob(255) -- Binary
SET     @VarBinary255 = NULL
DECLARE @Binary255 Blob(255) -- Binary
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
DECLARE @Json VarChar -- String
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @VarCharDefault VarChar(4000) -- AnsiString
SET     @VarCharDefault = NULL
DECLARE @VarChar1 VarChar(1) -- AnsiString
SET     @VarChar1 = NULL
DECLARE @Char255 String(255) -- AnsiStringFixedLength
SET     @Char255 = NULL
DECLARE @Char1 String(1) -- AnsiStringFixedLength
SET     @Char1 = NULL
DECLARE @VarBinary255 Blob(255) -- Binary
SET     @VarBinary255 = NULL
DECLARE @Binary255 Blob(255) -- Binary
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
DECLARE @Json VarChar -- String
SET     @Json = NULL
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @aInParam VarChar(256) -- AnsiString
SET     @aInParam = NULL
DECLARE @aOutParam Byte -- SByte
SET     @aOutParam = NULL

`testdataconnector`.`TestOutputParametersWithoutTableProcedure`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @param3 Int32
SET     @param3 = NULL
DECLARE @param2 Int32
SET     @param2 = NULL
DECLARE @param1 Int32
SET     @param1 = NULL

`testdataconnector`.`TestProcedure`

RollbackTransaction
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		TABLE_SCHEMA,
		TABLE_NAME,
		TABLE_TYPE,
		TABLE_COMMENT
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_SCHEMA = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


			SELECT
					CONCAT(lower(k.CONSTRAINT_SCHEMA),'..',k.TABLE_NAME) as TableID,
					k.CONSTRAINT_NAME                                    as PrimaryKeyName,
					k.COLUMN_NAME                                        as ColumnName,
					k.ORDINAL_POSITION                                   as Ordinal
				FROM
					INFORMATION_SCHEMA.KEY_COLUMN_USAGE k
					JOIN
						INFORMATION_SCHEMA.TABLE_CONSTRAINTS c
					ON
						k.CONSTRAINT_CATALOG = c.CONSTRAINT_CATALOG AND
						k.CONSTRAINT_SCHEMA  = c.CONSTRAINT_SCHEMA AND
						k.CONSTRAINT_NAME    = c.CONSTRAINT_NAME AND
						k.TABLE_NAME         = c.TABLE_NAME
				WHERE
					c.CONSTRAINT_TYPE   ='PRIMARY KEY' AND
					c.CONSTRAINT_SCHEMA = database()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		DATA_TYPE,
		COLUMN_TYPE,
		TABLE_SCHEMA,
		TABLE_NAME,
		COLUMN_NAME,
		IS_NULLABLE,
		ORDINAL_POSITION,
		CHARACTER_MAXIMUM_LENGTH,
		NUMERIC_PRECISION,
		NUMERIC_SCALE,
		EXTRA,
		COLUMN_COMMENT
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_SCHEMA = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		c.TABLE_SCHEMA,
		c.TABLE_NAME,
		c.CONSTRAINT_NAME,
		c.COLUMN_NAME,
		c.REFERENCED_TABLE_SCHEMA,
		c.REFERENCED_TABLE_NAME,
		c.REFERENCED_COLUMN_NAME,
		c.ORDINAL_POSITION
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
		INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
			ON c.CONSTRAINT_SCHEMA    = tc.CONSTRAINT_SCHEMA
				AND c.CONSTRAINT_NAME = tc.CONSTRAINT_NAME
				AND c.TABLE_SCHEMA    = tc.TABLE_SCHEMA
				AND c.TABLE_NAME      = tc.TABLE_NAME
	WHERE tc.CONSTRAINT_TYPE = 'FOREIGN KEY'
		AND c.TABLE_SCHEMA   = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE, ROUTINE_DEFINITION, ROUTINE_COMMENT FROM INFORMATION_SCHEMA.routines WHERE ROUTINE_TYPE IN ('PROCEDURE', 'FUNCTION') AND ROUTINE_SCHEMA = database()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, PARAMETER_MODE, ORDINAL_POSITION, PARAMETER_NAME, NUMERIC_PRECISION, NUMERIC_SCALE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, DTD_IDENTIFIER FROM INFORMATION_SCHEMA.parameters WHERE SPECIFIC_SCHEMA = database()

RollbackTransaction
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		TABLE_SCHEMA,
		TABLE_NAME,
		TABLE_TYPE,
		TABLE_COMMENT
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_SCHEMA = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


			SELECT
					CONCAT(lower(k.CONSTRAINT_SCHEMA),'..',k.TABLE_NAME) as TableID,
					k.CONSTRAINT_NAME                                    as PrimaryKeyName,
					k.COLUMN_NAME                                        as ColumnName,
					k.ORDINAL_POSITION                                   as Ordinal
				FROM
					INFORMATION_SCHEMA.KEY_COLUMN_USAGE k
					JOIN
						INFORMATION_SCHEMA.TABLE_CONSTRAINTS c
					ON
						k.CONSTRAINT_CATALOG = c.CONSTRAINT_CATALOG AND
						k.CONSTRAINT_SCHEMA  = c.CONSTRAINT_SCHEMA AND
						k.CONSTRAINT_NAME    = c.CONSTRAINT_NAME AND
						k.TABLE_NAME         = c.TABLE_NAME
				WHERE
					c.CONSTRAINT_TYPE   ='PRIMARY KEY' AND
					c.CONSTRAINT_SCHEMA = database()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		DATA_TYPE,
		COLUMN_TYPE,
		TABLE_SCHEMA,
		TABLE_NAME,
		COLUMN_NAME,
		IS_NULLABLE,
		ORDINAL_POSITION,
		CHARACTER_MAXIMUM_LENGTH,
		NUMERIC_PRECISION,
		NUMERIC_SCALE,
		EXTRA,
		COLUMN_COMMENT
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE TABLE_SCHEMA = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57


SELECT
		c.TABLE_SCHEMA,
		c.TABLE_NAME,
		c.CONSTRAINT_NAME,
		c.COLUMN_NAME,
		c.REFERENCED_TABLE_SCHEMA,
		c.REFERENCED_TABLE_NAME,
		c.REFERENCED_COLUMN_NAME,
		c.ORDINAL_POSITION
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE c
		INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
			ON c.CONSTRAINT_SCHEMA    = tc.CONSTRAINT_SCHEMA
				AND c.CONSTRAINT_NAME = tc.CONSTRAINT_NAME
				AND c.TABLE_SCHEMA    = tc.TABLE_SCHEMA
				AND c.TABLE_NAME      = tc.TABLE_NAME
	WHERE tc.CONSTRAINT_TYPE = 'FOREIGN KEY'
		AND c.TABLE_SCHEMA   = DATABASE()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE, ROUTINE_DEFINITION, ROUTINE_COMMENT FROM INFORMATION_SCHEMA.routines WHERE ROUTINE_TYPE IN ('PROCEDURE', 'FUNCTION') AND ROUTINE_SCHEMA = database()

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, PARAMETER_MODE, ORDINAL_POSITION, PARAMETER_NAME, NUMERIC_PRECISION, NUMERIC_SCALE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, DTD_IDENTIFIER FROM INFORMATION_SCHEMA.parameters WHERE SPECIFIC_SCHEMA = database()

RollbackTransaction
