-- SqlCe

SELECT Cast('12345' as nchar)

-- SqlCe

SELECT Cast('12345' as nchar(20))

-- SqlCe

SELECT Cast(NULL    as nchar(20))

-- SqlCe

SELECT Cast('12345' as nvarchar)

-- SqlCe

SELECT Cast('12345' as nvarchar(20))

-- SqlCe

SELECT Cast(NULL    as nvarchar(20))

-- SqlCe

SELECT Cast('12345' as ntext)

-- SqlCe

SELECT Cast(NULL    as ntext)

-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT RTRIM(@p)

-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p + ''

-- SqlCe
DECLARE @p NText(3) -- String
SET     @p = '123'

SELECT Cast(@p as ntext)

-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as nchar)

-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p + ''

-- SqlCe
DECLARE @p NText(3) -- String
SET     @p = '123'

SELECT Cast(@p as ntext)

-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p + ''

-- SqlCe
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT @p + ''

-- SqlCe
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT @p + ''

