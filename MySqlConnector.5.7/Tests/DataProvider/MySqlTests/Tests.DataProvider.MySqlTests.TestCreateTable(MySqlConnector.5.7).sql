-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @VarCharDefault VarChar(4) -- String
SET     @VarCharDefault = 'ыsdf'
DECLARE @VarChar1 VarChar(1) -- String
SET     @VarChar1 = 'ы'
DECLARE @VarChar112 VarChar(4) -- String
SET     @VarChar112 = 'ы123'
DECLARE @Char String -- StringFixedLength
SET     @Char = 'я'
DECLARE @Char255 String(6) -- AnsiStringFixedLength
SET     @Char255 = '!sdg3@'
DECLARE @Char1 String(1) -- AnsiStringFixedLength
SET     @Char1 = '!'
DECLARE @Char112 String(6) -- AnsiStringFixedLength
SET     @Char112 = '123 fd'
DECLARE @VarBinary1 Blob(1) -- Binary
SET     @VarBinary1 = 0x01
DECLARE @VarBinary255 Blob(3) -- Binary
SET     @VarBinary255 = 0x010416
DECLARE @VarBinary3 Blob(3) -- Binary
SET     @VarBinary3 = 0x010204
DECLARE @Binary1 Blob(1) -- Binary
SET     @Binary1 = 0x16
DECLARE @Binary255 Blob(3) -- Binary
SET     @Binary255 = 0x162C15
DECLARE @Binary3 Blob(2) -- Binary
SET     @Binary3 = 0x0121
DECLARE @TinyBlob Blob(3) -- Binary
SET     @TinyBlob = 0x030201
DECLARE @Blob Blob(3) -- Binary
SET     @Blob = 0x0D0201
DECLARE @MediumBlob Blob(3) -- Binary
SET     @MediumBlob = 0x170201
DECLARE @BlobDefault Blob(3) -- Binary
SET     @BlobDefault = 0x210201
DECLARE @LongBlob Blob(3) -- Binary
SET     @LongBlob = 0x850201
DECLARE @TinyText VarChar(4) -- String
SET     @TinyText = '12я3'
DECLARE @Text VarChar(7) -- String
SET     @Text = '1232354'
DECLARE @MediumText VarChar(4) -- String
SET     @MediumText = '1df3'
DECLARE @LongText VarChar(4) -- String
SET     @LongText = '1v23'
DECLARE @TextDefault VarChar(5) -- String
SET     @TextDefault = '12 #3'
DECLARE @Date Datetime -- DateTime
SET     @Date = '2123-02-03'
DECLARE @DateTime Datetime -- DateTime
SET     @DateTime = '2123-02-03 11:22:33'
DECLARE @DateTime3 Datetime -- DateTime
SET     @DateTime3 = '2123-02-03 11:22:33.123'
DECLARE @TimeStamp Datetime -- DateTimeOffset
SET     @TimeStamp = '2023-02-03T11:22:33.0000000+01:00'
DECLARE @TimeStamp5 Datetime -- DateTimeOffset
SET     @TimeStamp5 = '2013-02-03T11:22:33.1275000-01:00'
DECLARE @Time Time
SET     @Time = -04:03:53
DECLARE @Time2 Time
SET     @Time2 = 7.08:07:12
DECLARE @TinyInt Byte -- SByte
SET     @TinyInt = -123
DECLARE @UnsignedTinyInt UByte -- Byte
SET     @UnsignedTinyInt = 223
DECLARE @SmallInt Int16
SET     @SmallInt = -32768
DECLARE @UnsignedSmallInt UInt16
SET     @UnsignedSmallInt = 65535
DECLARE @Int Int32
SET     @Int = -2147483648
DECLARE @UnsignedInt UInt32
SET     @UnsignedInt = 4294967295
DECLARE @BigInt Int64
SET     @BigInt = -9223372036854775808
DECLARE @UnsignedBigInt UInt64
SET     @UnsignedBigInt = 18446744073709551615
DECLARE @Decimal NewDecimal(4, 0) -- Decimal
SET     @Decimal = 1234
DECLARE @Decimal15_0 NewDecimal(15, 0) -- Decimal
SET     @Decimal15_0 = 123456789012345
DECLARE @Decimal10_5 NewDecimal(9, 4) -- Decimal
SET     @Decimal10_5 = -12345.2345
DECLARE @Decimal20_2 NewDecimal(9, 2) -- Decimal
SET     @Decimal20_2 = -3412345.23
DECLARE @Float Float -- Single
SET     @Float = 3244.23999
DECLARE @Float10 Float -- Single
SET     @Float10 = 124.353996
DECLARE @Double Double
SET     @Double = 452.23523
DECLARE @Float30 Double
SET     @Float30 = 332.23500000000001
DECLARE @Bool Bool -- Boolean
SET     @Bool = 1
DECLARE @Bit1 UInt64
SET     @Bit1 = 1
DECLARE @Bit8 UInt64
SET     @Bit8 = 7
DECLARE @Bit16 UInt64
SET     @Bit16 = 254
DECLARE @Bit32 UInt64
SET     @Bit32 = 44542
DECLARE @Bit10 UInt64
SET     @Bit10 = 63
DECLARE @Bit64 UInt64
SET     @Bit64 = 3735928495
DECLARE @Json VarChar(9) -- String
SET     @Json = '{"x": 10}'
DECLARE @Guid Guid
SET     @Guid = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO `CreateTable`
(
	`VarCharDefault`,
	`VarChar1`,
	`VarChar112`,
	`Char`,
	`Char255`,
	`Char1`,
	`Char112`,
	`VarBinary1`,
	`VarBinary255`,
	`VarBinary3`,
	`Binary1`,
	`Binary255`,
	`Binary3`,
	`TinyBlob`,
	`Blob`,
	`MediumBlob`,
	`BlobDefault`,
	`LongBlob`,
	`TinyText`,
	`Text`,
	`MediumText`,
	`LongText`,
	`TextDefault`,
	`Date`,
	`DateTime`,
	`DateTime3`,
	`TimeStamp`,
	`TimeStamp5`,
	`Time`,
	`Time2`,
	`TinyInt`,
	`UnsignedTinyInt`,
	`SmallInt`,
	`UnsignedSmallInt`,
	`Int`,
	`UnsignedInt`,
	`BigInt`,
	`UnsignedBigInt`,
	`Decimal`,
	`Decimal15_0`,
	`Decimal10_5`,
	`Decimal20_2`,
	`Float`,
	`Float10`,
	`Double`,
	`Float30`,
	`Bool`,
	`Bit1`,
	`Bit8`,
	`Bit16`,
	`Bit32`,
	`Bit10`,
	`Bit64`,
	`Json`,
	`Guid`
)
VALUES
(
	@VarCharDefault,
	@VarChar1,
	@VarChar112,
	@Char,
	@Char255,
	@Char1,
	@Char112,
	@VarBinary1,
	@VarBinary255,
	@VarBinary3,
	@Binary1,
	@Binary255,
	@Binary3,
	@TinyBlob,
	@Blob,
	@MediumBlob,
	@BlobDefault,
	@LongBlob,
	@TinyText,
	@Text,
	@MediumText,
	@LongText,
	@TextDefault,
	@Date,
	@DateTime,
	@DateTime3,
	@TimeStamp,
	@TimeStamp5,
	@Time,
	@Time2,
	@TinyInt,
	@UnsignedTinyInt,
	@SmallInt,
	@UnsignedSmallInt,
	@Int,
	@UnsignedInt,
	@BigInt,
	@UnsignedBigInt,
	@Decimal,
	@Decimal15_0,
	@Decimal10_5,
	@Decimal20_2,
	@Float,
	@Float10,
	@Double,
	@Float30,
	@Bool,
	@Bit1,
	@Bit8,
	@Bit16,
	@Bit32,
	@Bit10,
	@Bit64,
	@Json,
	@Guid
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`VarCharDefault`,
	`t1`.`VarChar1`,
	`t1`.`VarChar112`,
	`t1`.`Char`,
	`t1`.`Char255`,
	`t1`.`Char1`,
	`t1`.`Char112`,
	`t1`.`VarBinary1`,
	`t1`.`VarBinary255`,
	`t1`.`VarBinary3`,
	`t1`.`Binary1`,
	`t1`.`Binary255`,
	`t1`.`Binary3`,
	`t1`.`TinyBlob`,
	`t1`.`Blob`,
	`t1`.`MediumBlob`,
	`t1`.`BlobDefault`,
	`t1`.`LongBlob`,
	`t1`.`TinyText`,
	`t1`.`Text`,
	`t1`.`MediumText`,
	`t1`.`LongText`,
	`t1`.`TextDefault`,
	`t1`.`Date`,
	`t1`.`DateTime`,
	`t1`.`DateTime3`,
	`t1`.`TimeStamp`,
	`t1`.`TimeStamp5`,
	`t1`.`Time`,
	`t1`.`Time2`,
	`t1`.`TinyInt`,
	`t1`.`UnsignedTinyInt`,
	`t1`.`SmallInt`,
	`t1`.`UnsignedSmallInt`,
	`t1`.`Int`,
	`t1`.`UnsignedInt`,
	`t1`.`BigInt`,
	`t1`.`UnsignedBigInt`,
	`t1`.`Decimal`,
	`t1`.`Decimal15_0`,
	`t1`.`Decimal10_5`,
	`t1`.`Decimal20_2`,
	`t1`.`Float`,
	`t1`.`Float10`,
	`t1`.`Double`,
	`t1`.`Float30`,
	`t1`.`Bool`,
	`t1`.`Bit1`,
	`t1`.`Bit8`,
	`t1`.`Bit16`,
	`t1`.`Bit32`,
	`t1`.`Bit10`,
	`t1`.`Bit64`,
	`t1`.`Json`,
	`t1`.`Guid`
FROM
	`CreateTable` `t1`
LIMIT 2

