-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(12345    as binary(2))

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as bit)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as tinyint)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as decimal)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as float)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as smallint)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as int)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as bigint)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as money)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(1        as real)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345'  as char(6))

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('<xml/>' as xml)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('2012-12-12 12:12:12' as datetime)

-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uniqueidentifier)

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT @p

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT @p

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT @p

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT @p

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Xml
SET     @p = System.Data.SqlTypes.SqlXml

SELECT @p

-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Xml
SET     @p = System.Data.SqlTypes.SqlXml

SELECT @p

