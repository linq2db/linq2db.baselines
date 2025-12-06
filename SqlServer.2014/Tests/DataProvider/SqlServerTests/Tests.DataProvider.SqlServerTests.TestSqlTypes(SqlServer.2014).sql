-- SqlServer.2014

SELECT Cast(12345    as binary(2))

-- SqlServer.2014

SELECT Cast(1        as bit)

-- SqlServer.2014

SELECT Cast(1        as tinyint)

-- SqlServer.2014

SELECT Cast(1        as decimal)

-- SqlServer.2014

SELECT Cast(1        as float)

-- SqlServer.2014

SELECT Cast(1        as smallint)

-- SqlServer.2014

SELECT Cast(1        as int)

-- SqlServer.2014

SELECT Cast(1        as bigint)

-- SqlServer.2014

SELECT Cast(1        as money)

-- SqlServer.2014

SELECT Cast(1        as real)

-- SqlServer.2014

SELECT Cast('12345'  as char(6))

-- SqlServer.2014

SELECT Cast('<xml/>' as xml)

-- SqlServer.2014

SELECT Cast('2012-12-12 12:12:12' as datetime)

-- SqlServer.2014

SELECT Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uniqueidentifier)

-- SqlServer.2014
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT @p

-- SqlServer.2014
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT @p

-- SqlServer.2014
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT @p

-- SqlServer.2014
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT @p

-- SqlServer.2014
DECLARE @p Xml
SET     @p = System.Data.SqlTypes.SqlXml

SELECT @p

-- SqlServer.2014
DECLARE @p Xml
SET     @p = System.Data.SqlTypes.SqlXml

SELECT @p

