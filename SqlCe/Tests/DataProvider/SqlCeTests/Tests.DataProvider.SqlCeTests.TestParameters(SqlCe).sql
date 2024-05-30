BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT Cast(@p as int)

BeforeExecute
-- SqlCe
DECLARE @p NVarChar(255) -- String
SET     @p = '1'

SELECT Cast(@p as nvarchar)

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1

SELECT Cast(@p as int)

BeforeExecute
-- SqlCe
DECLARE @p1 NVarChar(1) -- String
SET     @p1 = '1'

SELECT Cast(@p1 as nvarchar)

BeforeExecute
-- SqlCe
DECLARE @p1 Int -- Int32
SET     @p1 = 2
DECLARE @p2 Int -- Int32
SET     @p2 = 3

SELECT @p1 + @p2

BeforeExecute
-- SqlCe
DECLARE @p2 Int -- Int32
SET     @p2 = 2
DECLARE @p1 Int -- Int32
SET     @p1 = 3

SELECT @p2 + @p1

