-- SqlCe

SELECT Cast(12345 as binary(2))

-- SqlCe

SELECT Cast(12345 as binary(4))

-- SqlCe

SELECT Cast(12345 as varbinary(2))

-- SqlCe

SELECT Cast(12345 as varbinary(4))

-- SqlCe

SELECT Cast(NULL as image)

-- SqlCe
DECLARE @p Binary(2)
SET     @p = 0x3039

SELECT Cast(@p as binary(2))

-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary(2))

-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary(2))

-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT Cast(@p as varbinary)

-- SqlCe
DECLARE @p Binary(0)
SET     @p = 0x

SELECT Cast(@p as binary(1))

-- SqlCe
DECLARE @p Binary(0)
SET     @p = 0x

SELECT Cast(@p as binary)

-- SqlCe
DECLARE @p VarBinary(0) -- Binary
SET     @p = 0x

SELECT Cast(@p as varbinary)

-- SqlCe
DECLARE @p Image(0) -- Binary
SET     @p = 0x

SELECT Cast(@p as image)

-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary)

-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary)

-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary)

