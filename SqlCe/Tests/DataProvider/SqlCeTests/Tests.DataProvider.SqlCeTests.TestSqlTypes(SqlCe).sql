BeforeExecute
-- SqlCe

SELECT Cast(12345    as binary(2))

BeforeExecute
-- SqlCe

SELECT Cast(1        as bit)

BeforeExecute
-- SqlCe

SELECT Cast(1        as tinyint)

BeforeExecute
-- SqlCe

SELECT Cast(1        as decimal)

BeforeExecute
-- SqlCe

SELECT Cast(1        as float)

BeforeExecute
-- SqlCe

SELECT Cast(1        as smallint)

BeforeExecute
-- SqlCe

SELECT Cast(1        as int)

BeforeExecute
-- SqlCe

SELECT Cast(1        as bigint)

BeforeExecute
-- SqlCe

SELECT Cast(1        as money)

BeforeExecute
-- SqlCe

SELECT Cast(1        as real)

BeforeExecute
-- SqlCe

SELECT Cast('12345'  as nchar(6))

BeforeExecute
-- SqlCe

SELECT Cast('<xml/>' as nvarchar)

BeforeExecute
-- SqlCe

SELECT Cast('2012-12-12 12:12:12' as datetime)

BeforeExecute
-- SqlCe

SELECT Cast('6F9619FF-8B86-D011-B42D-00C04FC964FF' as uniqueidentifier)

BeforeExecute
-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT Cast(@p as varbinary)

BeforeExecute
-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = SqlBinary(2)

SELECT Cast(@p as varbinary)

BeforeExecute
-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT Cast(@p as bit)

BeforeExecute
-- SqlCe
DECLARE @p Bit -- Boolean
SET     @p = 1

SELECT Cast(@p as bit)

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(7) -- String
SET     @p = '<xml />'

SELECT Cast(@p as nvarchar)

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(7) -- String
SET     @p = '<xml />'

SELECT Cast(@p as nvarchar)

