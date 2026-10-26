-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(12345    as binary(2))

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as bit)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as tinyint)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as decimal)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as float)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as smallint)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as int)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as bigint)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as money)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast(1        as real)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast('12345'  as char(6))

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast('<xml/>' as xml)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast('2012-12-12 12:12:12' as datetime)

-- SqlServer.CS.MS SqlServer.2025
SELECT Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uniqueidentifier)

-- SqlServer.CS.MS SqlServer.2025
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT @p

-- SqlServer.CS.MS SqlServer.2025
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT @p

-- SqlServer.CS.MS SqlServer.2025
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT @p

-- SqlServer.CS.MS SqlServer.2025
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT @p

-- SqlServer.CS.MS SqlServer.2025
DECLARE @p Xml
SET     @p = System.Data.SqlTypes.SqlXml

SELECT @p

-- SqlServer.CS.MS SqlServer.2025
DECLARE @p Xml
SET     @p = System.Data.SqlTypes.SqlXml

SELECT @p

