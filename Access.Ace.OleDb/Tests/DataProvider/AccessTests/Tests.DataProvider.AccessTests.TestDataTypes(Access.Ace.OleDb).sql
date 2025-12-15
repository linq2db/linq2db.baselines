-- Access.Ace.OleDb AccessOleDb

SELECT bitDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Boolean
SET     @p = False

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bitDataType IS NULL OR @p IS NOT NULL AND bitDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Boolean
SET     @p = False

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bitDataType IS NULL OR @p IS NOT NULL AND bitDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Boolean
SET     @p = False

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND bitDataType IS NULL OR @p IS NOT NULL AND bitDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT bitDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Boolean
SET     @p = True

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Boolean
SET     @p = True

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Boolean
SET     @p = True

SELECT ID FROM [AllTypes] WHERE bitDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT smallintDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallintDataType IS NULL OR @p IS NOT NULL AND smallintDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p SmallInt -- Int16
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallintDataType IS NULL OR @p IS NOT NULL AND smallintDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND smallintDataType IS NULL OR @p IS NOT NULL AND smallintDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT smallintDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p SmallInt -- Int16
SET     @p = 25555

SELECT ID FROM [AllTypes] WHERE smallintDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT decimalDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar -- AnsiString
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND decimalDataType IS NULL OR @p IS NOT NULL AND decimalDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(18, 10) -- AnsiString
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND decimalDataType IS NULL OR @p IS NOT NULL AND decimalDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND decimalDataType IS NULL OR @p IS NOT NULL AND decimalDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT decimalDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(7, 0) -- AnsiString
SET     @p = 2222222

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(18, 10) -- AnsiString
SET     @p = 2222222

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(7, 0) -- AnsiString
SET     @p = 2222222

SELECT ID FROM [AllTypes] WHERE decimalDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT intDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND intDataType IS NULL OR @p IS NOT NULL AND intDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND intDataType IS NULL OR @p IS NOT NULL AND intDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND intDataType IS NULL OR @p IS NOT NULL AND intDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT intDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Integer -- Int32
SET     @p = 7777777

SELECT ID FROM [AllTypes] WHERE intDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT tinyintDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p TinyInt -- SByte
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND tinyintDataType IS NULL OR @p IS NOT NULL AND tinyintDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p TinyInt -- SByte
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND tinyintDataType IS NULL OR @p IS NOT NULL AND tinyintDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND tinyintDataType IS NULL OR @p IS NOT NULL AND tinyintDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT tinyintDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p TinyInt -- SByte
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p TinyInt -- SByte
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p TinyInt -- SByte
SET     @p = 100

SELECT ID FROM [AllTypes] WHERE tinyintDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT moneyDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND moneyDataType IS NULL OR @p IS NOT NULL AND moneyDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(18, 10) -- AnsiString
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND moneyDataType IS NULL OR @p IS NOT NULL AND moneyDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND moneyDataType IS NULL OR @p IS NOT NULL AND moneyDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT moneyDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Decimal(6, 0)
SET     @p = 100000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(18, 10) -- AnsiString
SET     @p = 100000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(6, 0) -- AnsiString
SET     @p = 100000

SELECT ID FROM [AllTypes] WHERE moneyDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT floatDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Double
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND floatDataType IS NULL OR @p IS NOT NULL AND floatDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Double
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND floatDataType IS NULL OR @p IS NOT NULL AND floatDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND floatDataType IS NULL OR @p IS NOT NULL AND floatDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT floatDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Double
SET     @p = 20.309999999999999

SELECT ID FROM [AllTypes] WHERE floatDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT realDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Single
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND realDataType IS NULL OR @p IS NOT NULL AND realDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Single
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND realDataType IS NULL OR @p IS NOT NULL AND realDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND realDataType IS NULL OR @p IS NOT NULL AND realDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT realDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Single
SET     @p = 16.2000008

SELECT ID FROM [AllTypes] WHERE realDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT datetimeDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Date -- DateTime
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND datetimeDataType IS NULL OR @p IS NOT NULL AND datetimeDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Date -- DateTime
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND datetimeDataType IS NULL OR @p IS NOT NULL AND datetimeDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND datetimeDataType IS NULL OR @p IS NOT NULL AND datetimeDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT datetimeDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Date -- DateTime
SET     @p = #2012-12-12 12:12:12#

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Date -- DateTime
SET     @p = #2012-12-12 12:12:12#

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Date -- DateTime
SET     @p = #2012-12-12 12:12:12#

SELECT ID FROM [AllTypes] WHERE datetimeDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT charDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Char -- AnsiStringFixedLength
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND charDataType IS NULL OR @p IS NOT NULL AND charDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p WChar(1) -- StringFixedLength
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND charDataType IS NULL OR @p IS NOT NULL AND charDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND charDataType IS NULL OR @p IS NOT NULL AND charDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT charDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Char(1) -- AnsiStringFixedLength
SET     @p = '1'

SELECT ID FROM [AllTypes] WHERE charDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p WChar(1) -- StringFixedLength
SET     @p = '1'

SELECT ID FROM [AllTypes] WHERE charDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p WChar(1) -- StringFixedLength
SET     @p = '1'

SELECT ID FROM [AllTypes] WHERE charDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT varcharDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar -- AnsiString
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varcharDataType IS NULL OR @p IS NOT NULL AND varcharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varcharDataType IS NULL OR @p IS NOT NULL AND varcharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varcharDataType IS NULL OR @p IS NOT NULL AND varcharDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT varcharDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarChar(3) -- AnsiString
SET     @p = '234'

SELECT ID FROM [AllTypes] WHERE varcharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = '234'

SELECT ID FROM [AllTypes] WHERE varcharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(3) -- String
SET     @p = '234'

SELECT ID FROM [AllTypes] WHERE varcharDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT textDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p LongVarChar -- AnsiString
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND textDataType IS NULL OR @p IS NOT NULL AND textDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND textDataType IS NULL OR @p IS NOT NULL AND textDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND textDataType IS NULL OR @p IS NOT NULL AND textDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT textDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p LongVarChar(3) -- AnsiString
SET     @p = '567'

SELECT ID FROM [AllTypes] WHERE textDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = '567'

SELECT ID FROM [AllTypes] WHERE textDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(3) -- String
SET     @p = '567'

SELECT ID FROM [AllTypes] WHERE textDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT ncharDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p WChar -- StringFixedLength
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ncharDataType IS NULL OR @p IS NOT NULL AND ncharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ncharDataType IS NULL OR @p IS NOT NULL AND ncharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ncharDataType IS NULL OR @p IS NOT NULL AND ncharDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT ncharDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p WChar(5) -- StringFixedLength
SET     @p = '23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = '23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(5) -- String
SET     @p = '23233'

SELECT ID FROM [AllTypes] WHERE ncharDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT nvarcharDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarcharDataType IS NULL OR @p IS NOT NULL AND nvarcharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarcharDataType IS NULL OR @p IS NOT NULL AND nvarcharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND nvarcharDataType IS NULL OR @p IS NOT NULL AND nvarcharDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT nvarcharDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(4) -- String
SET     @p = '3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = '3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(4) -- String
SET     @p = '3323'

SELECT ID FROM [AllTypes] WHERE nvarcharDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT ntextDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p LongVarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ntextDataType IS NULL OR @p IS NOT NULL AND ntextDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ntextDataType IS NULL OR @p IS NOT NULL AND ntextDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND ntextDataType IS NULL OR @p IS NOT NULL AND ntextDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT ntextDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p LongVarWChar(3) -- String
SET     @p = '111'

SELECT ID FROM [AllTypes] WHERE ntextDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(255) -- String
SET     @p = '111'

SELECT ID FROM [AllTypes] WHERE ntextDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar(3) -- String
SET     @p = '111'

SELECT ID FROM [AllTypes] WHERE ntextDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT binaryDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND binaryDataType IS NULL OR @p IS NOT NULL AND binaryDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND binaryDataType IS NULL OR @p IS NOT NULL AND binaryDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND binaryDataType IS NULL OR @p IS NOT NULL AND binaryDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT binaryDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(10) -- Binary
SET     @p = 0x01020304000000000000

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(10) -- Binary
SET     @p = 0x01020304000000000000

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(10) -- Binary
SET     @p = 0x01020304000000000000

SELECT ID FROM [AllTypes] WHERE binaryDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT varbinaryDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinaryDataType IS NULL OR @p IS NOT NULL AND varbinaryDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinaryDataType IS NULL OR @p IS NOT NULL AND varbinaryDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND varbinaryDataType IS NULL OR @p IS NOT NULL AND varbinaryDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT varbinaryDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(4) -- Binary
SET     @p = 0x01020305

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(4) -- Binary
SET     @p = 0x01020305

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(4) -- Binary
SET     @p = 0x01020305

SELECT ID FROM [AllTypes] WHERE varbinaryDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT imageDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND imageDataType IS NULL OR @p IS NOT NULL AND imageDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND imageDataType IS NULL OR @p IS NOT NULL AND imageDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND imageDataType IS NULL OR @p IS NOT NULL AND imageDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT imageDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(4) -- Binary
SET     @p = 0x03040506

SELECT ID FROM [AllTypes] WHERE imageDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(4) -- Binary
SET     @p = 0x03040506

SELECT ID FROM [AllTypes] WHERE imageDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(4) -- Binary
SET     @p = 0x03040506

SELECT ID FROM [AllTypes] WHERE imageDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT oleobjectDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Variant -- Object
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND oleobjectDataType IS NULL OR @p IS NOT NULL AND oleobjectDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND oleobjectDataType IS NULL OR @p IS NOT NULL AND oleobjectDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND oleobjectDataType IS NULL OR @p IS NOT NULL AND oleobjectDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT oleobjectDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(4) -- Binary
SET     @p = 0x05060708

SELECT ID FROM [AllTypes] WHERE oleobjectDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarBinary(4) -- Binary
SET     @p = 0x05060708

SELECT ID FROM [AllTypes] WHERE oleobjectDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT uniqueidentifierDataType FROM [AllTypes] WHERE ID = 1

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Guid
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND uniqueidentifierDataType IS NULL OR @p IS NOT NULL AND uniqueidentifierDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Guid
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND uniqueidentifierDataType IS NULL OR @p IS NOT NULL AND uniqueidentifierDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT ID FROM [AllTypes] WHERE @p IS NULL AND uniqueidentifierDataType IS NULL OR @p IS NOT NULL AND uniqueidentifierDataType = @p

-- Access.Ace.OleDb AccessOleDb

SELECT uniqueidentifierDataType FROM [AllTypes] WHERE ID = 2

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Guid
SET     @p = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Guid
SET     @p = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

-- Access.Ace.OleDb AccessOleDb
DECLARE @p Guid
SET     @p = {guid {6f9619ff-8b86-d011-b42d-00c04fc964ff}}

SELECT ID FROM [AllTypes] WHERE uniqueidentifierDataType = @p

