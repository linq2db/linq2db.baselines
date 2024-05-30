BeforeExecute
-- SqlCe

SELECT Cast(1 as timestamp)

BeforeExecute
-- SqlCe

SELECT Cast(1 as rowversion)

BeforeExecute
-- SqlCe
DECLARE @p Timestamp(8) -- Binary
SET     @p = 0x0000000000000001

SELECT Cast(@p as timestamp)

BeforeExecute
-- SqlCe
DECLARE @p Timestamp(8) -- Binary
SET     @p = 0x0000000000000001

SELECT Cast(@p as timestamp)

