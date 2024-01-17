BeforeExecute
-- SqlCe

SELECT Cast(12345 as binary(2))

BeforeExecute
-- SqlCe

SELECT Cast(12345 as binary(4))

BeforeExecute
-- SqlCe

SELECT Cast(12345 as varbinary(2))

BeforeExecute
-- SqlCe

SELECT Cast(12345 as varbinary(4))

BeforeExecute
-- SqlCe

SELECT Cast(NULL as image)

BeforeExecute
-- SqlCe
DECLARE @p Binary(2)
SET     @p = 0x3039

SELECT Cast(@p as binary(2))

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary(2))

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary(2))

BeforeExecute
-- SqlCe
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT Cast(@p as varbinary)

BeforeExecute
-- SqlCe
DECLARE @p Binary(0)
SET     @p = 0x

SELECT Cast(@p as binary(1))

BeforeExecute
-- SqlCe
DECLARE @p Binary(0)
SET     @p = 0x

SELECT Cast(@p as binary)

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(0) -- Binary
SET     @p = 0x

SELECT Cast(@p as varbinary)

BeforeExecute
-- SqlCe
DECLARE @p Image(0) -- Binary
SET     @p = 0x

SELECT Cast(@p as image)

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary)

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary)

BeforeExecute
-- SqlCe
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT Cast(@p as varbinary)

