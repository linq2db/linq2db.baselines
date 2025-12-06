-- SqlCe

SELECT Cast(1 as timestamp)

-- SqlCe

SELECT Cast(1 as rowversion)

-- SqlCe
DECLARE @p Timestamp(8) -- Binary
SET     @p = 0x0000000000000001

SELECT Cast(@p as timestamp)

-- SqlCe
DECLARE @p Timestamp(8) -- Binary
SET     @p = 0x0000000000000001

SELECT Cast(@p as timestamp)

