BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `ColumnOrderTest`
(
	`RecordID`       INT          NOT NULL,
	`EffectiveStart` DATETIME     NOT NULL,
	`EffectiveEnd`   DATETIME         NULL,
	`Key`            INT          NOT NULL,
	`Code`           VARCHAR(255)     NULL,
	`Name`           VARCHAR(255)     NULL,
	`Audit1ID`       INT          NOT NULL,
	`Audit2ID`       INT          NOT NULL,

	CONSTRAINT `PK_ColumnOrderTest` PRIMARY KEY CLUSTERED (`RecordID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql


SELECT
		TABLE_SCHEMA,
		TABLE_NAME,
		TABLE_TYPE,
		TABLE_COMMENT
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_SCHEMA = DATABASE()

BeforeExecute
-- MySql55 MySql.Official MySql


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

BeforeExecute
-- MySql55 MySql.Official MySql


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

BeforeExecute
-- MySql55 MySql.Official MySql


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

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT ROUTINE_SCHEMA, ROUTINE_NAME, ROUTINE_TYPE, ROUTINE_DEFINITION FROM INFORMATION_SCHEMA.routines WHERE ROUTINE_SCHEMA = database()

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT SPECIFIC_SCHEMA, SPECIFIC_NAME, PARAMETER_MODE, ORDINAL_POSITION, PARAMETER_NAME, NUMERIC_PRECISION, NUMERIC_SCALE, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, DTD_IDENTIFIER FROM INFORMATION_SCHEMA.parameters WHERE SPECIFIC_SCHEMA = database()

BeforeExecute
-- MySql55 MySql.Official MySql

`testdata`.`AddIssue792Record`

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @aInParam VarChar(256) -- AnsiString
SET     @aInParam = NULL
DECLARE @aOutParam Byte -- SByte
SET     @aOutParam = NULL

`testdata`.`TestOutputParametersWithoutTableProcedure`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @param3 Int32
SET     @param3 = NULL
DECLARE @param2 Int32
SET     @param2 = NULL
DECLARE @param1 Int32
SET     @param1 = NULL

`testdata`.`TestProcedure`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `ColumnOrderTest`

