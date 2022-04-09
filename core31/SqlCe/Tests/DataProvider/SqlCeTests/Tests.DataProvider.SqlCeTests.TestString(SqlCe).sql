BeforeExecute
-- SqlCe

SELECT Cast('12345' as nchar)

BeforeExecute
-- SqlCe

SELECT Cast('12345' as nchar(20))

BeforeExecute
-- SqlCe

SELECT Cast(NULL    as nchar(20))

BeforeExecute
-- SqlCe

SELECT Cast('12345' as nvarchar)

BeforeExecute
-- SqlCe

SELECT Cast('12345' as nvarchar(20))

BeforeExecute
-- SqlCe

SELECT Cast(NULL    as nvarchar(20))

BeforeExecute
-- SqlCe

SELECT Cast('12345' as ntext)

BeforeExecute
-- SqlCe

SELECT Cast(NULL    as ntext)

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT RTRIM(@p)

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p + ''

BeforeExecute
-- SqlCe
DECLARE @p NText(3) -- String
SET     @p = '123'

SELECT Cast(@p as ntext)

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as nchar)

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p + ''

BeforeExecute
-- SqlCe
DECLARE @p NText(3) -- String
SET     @p = '123'

SELECT Cast(@p as ntext)

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p + ''

BeforeExecute
-- SqlCe
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT @p + ''

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT @p + ''

