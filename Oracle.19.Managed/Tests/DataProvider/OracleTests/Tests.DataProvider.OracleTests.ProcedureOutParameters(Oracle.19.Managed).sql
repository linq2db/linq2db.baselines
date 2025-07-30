BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Decimal
SET     @ID = 1
DECLARE @bigintDataType Decimal
SET     @bigintDataType = 1
DECLARE @numericDataType Decimal
SET     @numericDataType = 1
DECLARE @bitDataType Decimal
SET     @bitDataType = 1
DECLARE @smallintDataType Decimal
SET     @smallintDataType = 1
DECLARE @decimalDataType Decimal
SET     @decimalDataType = 1
DECLARE @smallmoneyDataType Decimal
SET     @smallmoneyDataType = 1
DECLARE @intDataType Decimal
SET     @intDataType = 1
DECLARE @tinyintDataType Decimal
SET     @tinyintDataType = 1
DECLARE @moneyDataType Decimal
SET     @moneyDataType = 1
DECLARE @floatDataType BinaryDouble -- Double
SET     @floatDataType = 1
DECLARE @realDataType BinaryFloat -- Single
SET     @realDataType = 1
DECLARE @datetimeDataType TimeStamp -- DateTime
SET     @datetimeDataType = TIMESTAMP '2020-02-29 17:54:55.000000'
DECLARE @datetime2DataType TimeStamp -- DateTime
SET     @datetime2DataType = TIMESTAMP '2020-02-29 17:54:55.123123'
DECLARE @datetimeoffsetDataType TimeStampTZ -- DateTimeOffset
SET     @datetimeoffsetDataType = 02/29/2020 17:54:55.123123 +00:40
DECLARE @localZoneDataType TimeStampTZ -- DateTimeOffset
SET     @localZoneDataType = 02/29/2020 17:54:55.123123 +00:40
DECLARE @charDataType Char -- AnsiStringFixedLength
SET     @charDataType = 'A'
DECLARE @char20DataType Char -- AnsiStringFixedLength
SET     @char20DataType = 'B'
DECLARE @varcharDataType Varchar2(7) -- String
SET     @varcharDataType = 'VarChar'
DECLARE @textDataType Clob -- Object
SET     @textDataType = 'Text'
DECLARE @ncharDataType Char(5) -- StringFixedLength
SET     @ncharDataType = 'NChar'
DECLARE @nvarcharDataType NVarchar2(8) -- String
SET     @nvarcharDataType = 'NVarChar'
DECLARE @ntextDataType NClob -- Object
SET     @ntextDataType = 'NText'
DECLARE @binaryDataType Blob -- Object
SET     @binaryDataType = HEXTORAW('010203')
DECLARE @bfileDataType BFile -- Object
SET     @bfileDataType = NULL
DECLARE @guidDataType Raw(16) -- Binary
SET     @guidDataType = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @xmlDataType XmlType(53) -- String
SET     @xmlDataType = '<?xml version="1.0" encoding="UTF-8"?><test>hi</test>'

ALLOUTPUTPARAMETERS

