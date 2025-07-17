BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3000
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4000
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900000
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90000
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7000
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 136
DECLARE @floatDataType Double
SET     @floatDataType = 7700
DECLARE @realDataType Real -- Single
SET     @realDataType = 7600
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3001
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4001
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900001
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90001
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7001
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 137
DECLARE @floatDataType Double
SET     @floatDataType = 7701
DECLARE @realDataType Real -- Single
SET     @realDataType = 7601
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3002
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4002
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900002
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90002
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7002
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 138
DECLARE @floatDataType Double
SET     @floatDataType = 7702
DECLARE @realDataType Real -- Single
SET     @realDataType = 7602
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3003
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4003
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900003
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90003
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7003
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 139
DECLARE @floatDataType Double
SET     @floatDataType = 7703
DECLARE @realDataType Real -- Single
SET     @realDataType = 7603
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3004
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4004
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900004
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90004
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7004
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 140
DECLARE @floatDataType Double
SET     @floatDataType = 7704
DECLARE @realDataType Real -- Single
SET     @realDataType = 7604
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3005
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4005
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900005
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90005
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7005
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 141
DECLARE @floatDataType Double
SET     @floatDataType = 7705
DECLARE @realDataType Real -- Single
SET     @realDataType = 7605
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3006
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4006
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900006
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90006
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7006
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 142
DECLARE @floatDataType Double
SET     @floatDataType = 7706
DECLARE @realDataType Real -- Single
SET     @realDataType = 7606
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3007
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4007
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900007
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90007
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7007
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 143
DECLARE @floatDataType Double
SET     @floatDataType = 7707
DECLARE @realDataType Real -- Single
SET     @realDataType = 7607
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3008
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4008
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900008
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90008
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7008
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 144
DECLARE @floatDataType Double
SET     @floatDataType = 7708
DECLARE @realDataType Real -- Single
SET     @realDataType = 7608
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3009
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4009
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900009
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90009
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7009
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 145
DECLARE @floatDataType Double
SET     @floatDataType = 7709
DECLARE @realDataType Real -- Single
SET     @realDataType = 7609
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3010
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4010
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900010
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90010
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7010
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 146
DECLARE @floatDataType Double
SET     @floatDataType = 7710
DECLARE @realDataType Real -- Single
SET     @realDataType = 7610
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3011
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4011
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900011
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90011
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7011
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 147
DECLARE @floatDataType Double
SET     @floatDataType = 7711
DECLARE @realDataType Real -- Single
SET     @realDataType = 7611
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3012
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4012
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900012
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90012
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7012
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 148
DECLARE @floatDataType Double
SET     @floatDataType = 7712
DECLARE @realDataType Real -- Single
SET     @realDataType = 7612
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3013
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4013
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900013
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90013
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7013
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 149
DECLARE @floatDataType Double
SET     @floatDataType = 7713
DECLARE @realDataType Real -- Single
SET     @realDataType = 7613
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3014
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4014
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900014
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90014
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7014
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 150
DECLARE @floatDataType Double
SET     @floatDataType = 7714
DECLARE @realDataType Real -- Single
SET     @realDataType = 7614
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3015
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4015
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900015
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90015
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7015
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 151
DECLARE @floatDataType Double
SET     @floatDataType = 7715
DECLARE @realDataType Real -- Single
SET     @realDataType = 7615
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3016
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4016
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900016
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90016
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7016
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 152
DECLARE @floatDataType Double
SET     @floatDataType = 7716
DECLARE @realDataType Real -- Single
SET     @realDataType = 7616
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3017
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4017
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900017
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90017
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7017
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 153
DECLARE @floatDataType Double
SET     @floatDataType = 7717
DECLARE @realDataType Real -- Single
SET     @realDataType = 7617
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3018
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4018
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900018
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90018
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7018
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 154
DECLARE @floatDataType Double
SET     @floatDataType = 7718
DECLARE @realDataType Real -- Single
SET     @realDataType = 7618
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3019
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4019
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900019
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90019
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7019
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 155
DECLARE @floatDataType Double
SET     @floatDataType = 7719
DECLARE @realDataType Real -- Single
SET     @realDataType = 7619
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3020
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4020
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900020
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90020
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7020
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 156
DECLARE @floatDataType Double
SET     @floatDataType = 7720
DECLARE @realDataType Real -- Single
SET     @realDataType = 7620
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3021
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4021
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900021
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90021
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7021
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 157
DECLARE @floatDataType Double
SET     @floatDataType = 7721
DECLARE @realDataType Real -- Single
SET     @realDataType = 7621
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3022
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4022
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900022
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90022
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7022
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 158
DECLARE @floatDataType Double
SET     @floatDataType = 7722
DECLARE @realDataType Real -- Single
SET     @realDataType = 7622
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3023
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4023
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900023
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90023
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7023
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 159
DECLARE @floatDataType Double
SET     @floatDataType = 7723
DECLARE @realDataType Real -- Single
SET     @realDataType = 7623
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3024
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4024
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900024
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90024
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7024
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 160
DECLARE @floatDataType Double
SET     @floatDataType = 7724
DECLARE @realDataType Real -- Single
SET     @realDataType = 7624
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3025
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4025
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900025
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90025
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7025
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 161
DECLARE @floatDataType Double
SET     @floatDataType = 7725
DECLARE @realDataType Real -- Single
SET     @realDataType = 7625
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3026
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4026
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900026
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90026
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7026
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 162
DECLARE @floatDataType Double
SET     @floatDataType = 7726
DECLARE @realDataType Real -- Single
SET     @realDataType = 7626
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3027
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4027
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900027
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90027
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7027
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 163
DECLARE @floatDataType Double
SET     @floatDataType = 7727
DECLARE @realDataType Real -- Single
SET     @realDataType = 7627
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3028
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4028
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900028
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90028
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7028
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 164
DECLARE @floatDataType Double
SET     @floatDataType = 7728
DECLARE @realDataType Real -- Single
SET     @realDataType = 7628
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3029
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4029
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900029
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90029
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7029
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 165
DECLARE @floatDataType Double
SET     @floatDataType = 7729
DECLARE @realDataType Real -- Single
SET     @realDataType = 7629
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3030
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4030
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900030
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90030
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7030
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 166
DECLARE @floatDataType Double
SET     @floatDataType = 7730
DECLARE @realDataType Real -- Single
SET     @realDataType = 7630
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3031
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4031
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900031
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90031
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7031
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 167
DECLARE @floatDataType Double
SET     @floatDataType = 7731
DECLARE @realDataType Real -- Single
SET     @realDataType = 7631
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3032
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4032
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900032
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90032
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7032
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 168
DECLARE @floatDataType Double
SET     @floatDataType = 7732
DECLARE @realDataType Real -- Single
SET     @realDataType = 7632
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3033
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4033
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900033
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90033
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7033
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 169
DECLARE @floatDataType Double
SET     @floatDataType = 7733
DECLARE @realDataType Real -- Single
SET     @realDataType = 7633
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3034
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4034
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900034
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90034
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7034
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 170
DECLARE @floatDataType Double
SET     @floatDataType = 7734
DECLARE @realDataType Real -- Single
SET     @realDataType = 7634
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3035
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4035
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900035
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90035
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7035
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 171
DECLARE @floatDataType Double
SET     @floatDataType = 7735
DECLARE @realDataType Real -- Single
SET     @realDataType = 7635
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3036
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4036
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900036
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90036
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7036
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 172
DECLARE @floatDataType Double
SET     @floatDataType = 7736
DECLARE @realDataType Real -- Single
SET     @realDataType = 7636
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3037
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4037
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900037
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90037
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7037
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 173
DECLARE @floatDataType Double
SET     @floatDataType = 7737
DECLARE @realDataType Real -- Single
SET     @realDataType = 7637
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3038
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4038
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900038
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90038
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7038
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 174
DECLARE @floatDataType Double
SET     @floatDataType = 7738
DECLARE @realDataType Real -- Single
SET     @realDataType = 7638
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3039
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4039
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900039
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90039
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7039
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 175
DECLARE @floatDataType Double
SET     @floatDataType = 7739
DECLARE @realDataType Real -- Single
SET     @realDataType = 7639
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3040
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4040
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900040
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90040
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7040
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 176
DECLARE @floatDataType Double
SET     @floatDataType = 7740
DECLARE @realDataType Real -- Single
SET     @realDataType = 7640
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3041
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4041
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900041
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90041
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7041
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 177
DECLARE @floatDataType Double
SET     @floatDataType = 7741
DECLARE @realDataType Real -- Single
SET     @realDataType = 7641
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3042
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4042
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900042
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90042
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7042
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 178
DECLARE @floatDataType Double
SET     @floatDataType = 7742
DECLARE @realDataType Real -- Single
SET     @realDataType = 7642
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3043
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4043
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900043
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90043
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7043
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 179
DECLARE @floatDataType Double
SET     @floatDataType = 7743
DECLARE @realDataType Real -- Single
SET     @realDataType = 7643
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3044
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4044
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900044
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90044
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7044
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 180
DECLARE @floatDataType Double
SET     @floatDataType = 7744
DECLARE @realDataType Real -- Single
SET     @realDataType = 7644
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3045
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4045
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900045
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90045
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7045
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 181
DECLARE @floatDataType Double
SET     @floatDataType = 7745
DECLARE @realDataType Real -- Single
SET     @realDataType = 7645
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3046
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4046
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900046
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90046
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7046
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 182
DECLARE @floatDataType Double
SET     @floatDataType = 7746
DECLARE @realDataType Real -- Single
SET     @realDataType = 7646
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3047
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4047
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900047
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90047
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7047
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 183
DECLARE @floatDataType Double
SET     @floatDataType = 7747
DECLARE @realDataType Real -- Single
SET     @realDataType = 7647
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3048
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4048
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900048
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90048
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7048
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 184
DECLARE @floatDataType Double
SET     @floatDataType = 7748
DECLARE @realDataType Real -- Single
SET     @realDataType = 7648
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3049
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4049
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900049
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90049
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7049
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 185
DECLARE @floatDataType Double
SET     @floatDataType = 7749
DECLARE @realDataType Real -- Single
SET     @realDataType = 7649
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3050
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4050
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900050
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90050
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7050
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 186
DECLARE @floatDataType Double
SET     @floatDataType = 7750
DECLARE @realDataType Real -- Single
SET     @realDataType = 7650
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3051
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4051
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900051
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90051
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7051
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 187
DECLARE @floatDataType Double
SET     @floatDataType = 7751
DECLARE @realDataType Real -- Single
SET     @realDataType = 7651
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3052
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4052
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900052
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90052
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7052
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 188
DECLARE @floatDataType Double
SET     @floatDataType = 7752
DECLARE @realDataType Real -- Single
SET     @realDataType = 7652
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3053
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4053
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900053
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90053
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7053
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 189
DECLARE @floatDataType Double
SET     @floatDataType = 7753
DECLARE @realDataType Real -- Single
SET     @realDataType = 7653
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3054
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4054
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900054
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90054
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7054
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 190
DECLARE @floatDataType Double
SET     @floatDataType = 7754
DECLARE @realDataType Real -- Single
SET     @realDataType = 7654
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3055
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4055
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900055
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90055
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7055
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 191
DECLARE @floatDataType Double
SET     @floatDataType = 7755
DECLARE @realDataType Real -- Single
SET     @realDataType = 7655
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3056
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4056
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900056
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90056
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7056
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 192
DECLARE @floatDataType Double
SET     @floatDataType = 7756
DECLARE @realDataType Real -- Single
SET     @realDataType = 7656
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3057
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4057
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900057
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90057
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7057
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 193
DECLARE @floatDataType Double
SET     @floatDataType = 7757
DECLARE @realDataType Real -- Single
SET     @realDataType = 7657
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3058
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4058
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900058
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90058
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7058
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 194
DECLARE @floatDataType Double
SET     @floatDataType = 7758
DECLARE @realDataType Real -- Single
SET     @realDataType = 7658
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3059
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4059
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900059
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90059
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7059
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 195
DECLARE @floatDataType Double
SET     @floatDataType = 7759
DECLARE @realDataType Real -- Single
SET     @realDataType = 7659
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3060
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4060
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900060
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90060
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7060
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 196
DECLARE @floatDataType Double
SET     @floatDataType = 7760
DECLARE @realDataType Real -- Single
SET     @realDataType = 7660
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3061
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4061
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900061
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90061
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7061
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 197
DECLARE @floatDataType Double
SET     @floatDataType = 7761
DECLARE @realDataType Real -- Single
SET     @realDataType = 7661
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3062
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4062
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900062
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90062
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7062
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 198
DECLARE @floatDataType Double
SET     @floatDataType = 7762
DECLARE @realDataType Real -- Single
SET     @realDataType = 7662
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3063
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4063
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900063
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90063
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7063
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 199
DECLARE @floatDataType Double
SET     @floatDataType = 7763
DECLARE @realDataType Real -- Single
SET     @realDataType = 7663
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3064
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4064
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900064
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90064
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7064
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 200
DECLARE @floatDataType Double
SET     @floatDataType = 7764
DECLARE @realDataType Real -- Single
SET     @realDataType = 7664
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3065
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4065
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900065
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90065
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7065
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 201
DECLARE @floatDataType Double
SET     @floatDataType = 7765
DECLARE @realDataType Real -- Single
SET     @realDataType = 7665
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3066
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4066
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900066
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90066
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7066
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 202
DECLARE @floatDataType Double
SET     @floatDataType = 7766
DECLARE @realDataType Real -- Single
SET     @realDataType = 7666
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3067
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4067
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900067
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90067
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7067
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 203
DECLARE @floatDataType Double
SET     @floatDataType = 7767
DECLARE @realDataType Real -- Single
SET     @realDataType = 7667
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3068
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4068
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900068
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90068
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7068
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 204
DECLARE @floatDataType Double
SET     @floatDataType = 7768
DECLARE @realDataType Real -- Single
SET     @realDataType = 7668
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3069
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4069
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900069
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90069
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7069
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 205
DECLARE @floatDataType Double
SET     @floatDataType = 7769
DECLARE @realDataType Real -- Single
SET     @realDataType = 7669
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3070
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4070
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900070
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90070
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7070
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 206
DECLARE @floatDataType Double
SET     @floatDataType = 7770
DECLARE @realDataType Real -- Single
SET     @realDataType = 7670
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3071
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4071
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900071
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90071
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7071
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 207
DECLARE @floatDataType Double
SET     @floatDataType = 7771
DECLARE @realDataType Real -- Single
SET     @realDataType = 7671
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3072
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4072
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900072
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90072
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7072
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 208
DECLARE @floatDataType Double
SET     @floatDataType = 7772
DECLARE @realDataType Real -- Single
SET     @realDataType = 7672
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3073
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4073
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900073
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90073
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7073
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 209
DECLARE @floatDataType Double
SET     @floatDataType = 7773
DECLARE @realDataType Real -- Single
SET     @realDataType = 7673
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3074
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4074
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900074
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90074
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7074
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 210
DECLARE @floatDataType Double
SET     @floatDataType = 7774
DECLARE @realDataType Real -- Single
SET     @realDataType = 7674
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3075
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4075
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900075
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90075
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7075
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 211
DECLARE @floatDataType Double
SET     @floatDataType = 7775
DECLARE @realDataType Real -- Single
SET     @realDataType = 7675
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3076
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4076
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900076
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90076
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7076
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 212
DECLARE @floatDataType Double
SET     @floatDataType = 7776
DECLARE @realDataType Real -- Single
SET     @realDataType = 7676
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3077
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4077
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900077
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90077
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7077
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 213
DECLARE @floatDataType Double
SET     @floatDataType = 7777
DECLARE @realDataType Real -- Single
SET     @realDataType = 7677
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3078
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4078
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900078
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90078
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7078
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 214
DECLARE @floatDataType Double
SET     @floatDataType = 7778
DECLARE @realDataType Real -- Single
SET     @realDataType = 7678
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3079
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4079
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900079
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90079
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7079
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 215
DECLARE @floatDataType Double
SET     @floatDataType = 7779
DECLARE @realDataType Real -- Single
SET     @realDataType = 7679
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3080
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4080
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900080
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90080
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7080
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 216
DECLARE @floatDataType Double
SET     @floatDataType = 7780
DECLARE @realDataType Real -- Single
SET     @realDataType = 7680
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3081
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4081
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900081
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90081
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7081
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 217
DECLARE @floatDataType Double
SET     @floatDataType = 7781
DECLARE @realDataType Real -- Single
SET     @realDataType = 7681
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3082
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4082
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900082
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90082
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7082
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 218
DECLARE @floatDataType Double
SET     @floatDataType = 7782
DECLARE @realDataType Real -- Single
SET     @realDataType = 7682
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3083
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4083
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900083
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90083
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7083
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 219
DECLARE @floatDataType Double
SET     @floatDataType = 7783
DECLARE @realDataType Real -- Single
SET     @realDataType = 7683
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3084
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4084
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900084
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90084
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7084
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 220
DECLARE @floatDataType Double
SET     @floatDataType = 7784
DECLARE @realDataType Real -- Single
SET     @realDataType = 7684
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3085
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4085
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900085
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90085
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7085
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 221
DECLARE @floatDataType Double
SET     @floatDataType = 7785
DECLARE @realDataType Real -- Single
SET     @realDataType = 7685
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3086
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4086
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900086
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90086
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7086
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 222
DECLARE @floatDataType Double
SET     @floatDataType = 7786
DECLARE @realDataType Real -- Single
SET     @realDataType = 7686
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3087
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4087
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900087
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90087
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7087
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 223
DECLARE @floatDataType Double
SET     @floatDataType = 7787
DECLARE @realDataType Real -- Single
SET     @realDataType = 7687
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3088
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4088
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900088
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90088
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7088
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 224
DECLARE @floatDataType Double
SET     @floatDataType = 7788
DECLARE @realDataType Real -- Single
SET     @realDataType = 7688
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3089
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4089
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900089
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90089
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7089
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 225
DECLARE @floatDataType Double
SET     @floatDataType = 7789
DECLARE @realDataType Real -- Single
SET     @realDataType = 7689
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3090
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4090
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900090
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90090
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7090
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 226
DECLARE @floatDataType Double
SET     @floatDataType = 7790
DECLARE @realDataType Real -- Single
SET     @realDataType = 7690
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3091
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4091
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900091
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90091
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7091
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 227
DECLARE @floatDataType Double
SET     @floatDataType = 7791
DECLARE @realDataType Real -- Single
SET     @realDataType = 7691
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3092
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4092
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900092
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90092
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7092
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 228
DECLARE @floatDataType Double
SET     @floatDataType = 7792
DECLARE @realDataType Real -- Single
SET     @realDataType = 7692
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3093
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4093
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900093
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90093
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7093
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 229
DECLARE @floatDataType Double
SET     @floatDataType = 7793
DECLARE @realDataType Real -- Single
SET     @realDataType = 7693
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3094
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4094
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900094
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90094
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7094
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 230
DECLARE @floatDataType Double
SET     @floatDataType = 7794
DECLARE @realDataType Real -- Single
SET     @realDataType = 7694
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3095
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4095
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900095
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90095
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7095
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 231
DECLARE @floatDataType Double
SET     @floatDataType = 7795
DECLARE @realDataType Real -- Single
SET     @realDataType = 7695
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3096
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4096
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900096
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90096
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7096
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 232
DECLARE @floatDataType Double
SET     @floatDataType = 7796
DECLARE @realDataType Real -- Single
SET     @realDataType = 7696
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3097
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4097
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900097
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90097
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7097
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 233
DECLARE @floatDataType Double
SET     @floatDataType = 7797
DECLARE @realDataType Real -- Single
SET     @realDataType = 7697
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3098
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4098
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900098
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90098
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7098
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 234
DECLARE @floatDataType Double
SET     @floatDataType = 7798
DECLARE @realDataType Real -- Single
SET     @realDataType = 7698
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @bigintDataType BigInt -- Int64
SET     @bigintDataType = 3099
DECLARE @smallintDataType SmallInt -- Int16
SET     @smallintDataType = 4099
DECLARE @decimalDataType Decimal(6, 0)
SET     @decimalDataType = 900099
DECLARE @smalldecimalDataType Decimal(5, 0)
SET     @smalldecimalDataType = 90099
DECLARE @intDataType Int -- Int32
SET     @intDataType = 7099
DECLARE @tinyintDataType TinyInt(1) -- Byte
SET     @tinyintDataType = 235
DECLARE @floatDataType Double
SET     @floatDataType = 7799
DECLARE @realDataType Real -- Single
SET     @realDataType = 7699
DECLARE @dateDataType DateTime
SET     @dateDataType = '2020-02-29 17:54:55.123'
DECLARE @timeDataType Time
SET     @timeDataType = 17:54:55.1231234
DECLARE @seconddateDataType DateTime
SET     @seconddateDataType = '2020-02-29 17:54:55.123'
DECLARE @timestampDataType DateTime
SET     @timestampDataType = '2020-02-29 17:54:55.123'
DECLARE @charDataType NChar(1) -- StringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType NVarChar -- String
SET     @char20DataType = NULL
DECLARE @varcharDataType NVarChar(2) -- String
SET     @varcharDataType = 'AA'
DECLARE @textDataType NVarChar(4) -- String
SET     @textDataType = 'text'
DECLARE @shorttextDataType NVarChar(9) -- String
SET     @shorttextDataType = 'shorttext'
DECLARE @ncharDataType NChar(1) -- StringFixedLength
SET     @ncharDataType = 'ü'
DECLARE @nchar20DataType NVarChar -- String
SET     @nchar20DataType = NULL
DECLARE @nvarcharDataType NVarChar(7) -- String
SET     @nvarcharDataType = 'Aüfsdfü'
DECLARE @alphanumDataType NVarChar(9) -- String
SET     @alphanumDataType = 'abcQWE654'
DECLARE @binaryDataType VarBinary(1) -- Binary
SET     @binaryDataType = x'01'
DECLARE @varbinaryDataType VarBinary(3) -- Binary
SET     @varbinaryDataType = x'010203'
DECLARE @blobDataType VarBinary(6) -- Binary
SET     @blobDataType = x'010203040506'
DECLARE @clobDataType NVarChar(12) -- String
SET     @clobDataType = 'clobclobclob'
DECLARE @nclobDataType NVarChar(18) -- String
SET     @nclobDataType = 'nclobünclobünclobü'

INSERT INTO "AllTypes"
(
	"bigintDataType",
	"smallintDataType",
	"decimalDataType",
	"smalldecimalDataType",
	"intDataType",
	"tinyintDataType",
	"floatDataType",
	"realDataType",
	"dateDataType",
	"timeDataType",
	"seconddateDataType",
	"timestampDataType",
	"charDataType",
	"char20DataType",
	"varcharDataType",
	"textDataType",
	"shorttextDataType",
	"ncharDataType",
	"nchar20DataType",
	"nvarcharDataType",
	"alphanumDataType",
	"binaryDataType",
	"varbinaryDataType",
	"blobDataType",
	"clobDataType",
	"nclobDataType"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

