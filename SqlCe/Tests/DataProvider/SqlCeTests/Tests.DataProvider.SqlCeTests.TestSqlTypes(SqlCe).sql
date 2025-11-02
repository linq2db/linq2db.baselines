-- SqlCe

SELECT Cast(12345    as binary(2))

-- SqlCe

SELECT Cast(1        as bit)

-- SqlCe

SELECT Cast(1        as tinyint)

-- SqlCe

SELECT Cast(1        as decimal)

-- SqlCe

SELECT Cast(1        as float)

-- SqlCe

SELECT Cast(1        as smallint)

-- SqlCe

SELECT Cast(1        as int)

-- SqlCe

SELECT Cast(1        as bigint)

-- SqlCe

SELECT Cast(1        as money)

-- SqlCe

SELECT Cast(1        as real)

-- SqlCe

SELECT Cast('12345'  as nchar(6))

-- SqlCe

SELECT Cast('<xml/>' as nvarchar)

-- SqlCe

SELECT Cast('2012-12-12 12:12:12' as datetime)

-- SqlCe

SELECT Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uniqueidentifier)

-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT Cast(@p as varbinary)

-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT Cast(@p as varbinary)

-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT Cast(@p as bit)

-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT Cast(@p as bit)

-- SqlCe
DECLARE @p NVarChar(7) -- String
SET     @p = '<xml />'

SELECT Cast(@p as nvarchar)

-- SqlCe
DECLARE @p NVarChar(7) -- String
SET     @p = '<xml />'

SELECT Cast(@p as nvarchar)

