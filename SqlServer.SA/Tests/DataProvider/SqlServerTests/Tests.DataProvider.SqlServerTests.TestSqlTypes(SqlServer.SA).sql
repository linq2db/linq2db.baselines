-- SqlServer.SA SqlServer.2019

SELECT Cast(12345    as binary(2))

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as bit)

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as tinyint)

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as decimal)

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as float)

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as smallint)

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as int)

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as bigint)

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as money)

-- SqlServer.SA SqlServer.2019

SELECT Cast(1        as real)

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345'  as char(6))

-- SqlServer.SA SqlServer.2019

SELECT Cast('<xml/>' as xml)

-- SqlServer.SA SqlServer.2019

SELECT Cast('2012-12-12 12:12:12' as datetime)

-- SqlServer.SA SqlServer.2019

SELECT Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uniqueidentifier)

-- SqlServer.SA SqlServer.2019
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p Xml
SET     @p = System.Data.SqlTypes.SqlXml

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p Xml
SET     @p = System.Data.SqlTypes.SqlXml

SELECT @p

