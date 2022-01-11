BeforeExecute
-- SqlServer.2019

SELECT Cast(12345 as binary(2))

BeforeExecute
-- SqlServer.2019

SELECT Cast(12345 as binary(4))

BeforeExecute
-- SqlServer.2019

SELECT Cast(12345 as varbinary(2))

BeforeExecute
-- SqlServer.2019

SELECT Cast(12345 as varbinary(4))

BeforeExecute
-- SqlServer.2019

SELECT Cast(NULL as image)

BeforeExecute
-- SqlServer.2019

SELECT Cast(12345 as varbinary(max))

BeforeExecute
-- SqlServer.2019
DECLARE @p Binary(2)
SET     @p = 0x3039

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x3039

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x3039

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = NULL

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p Binary(0)
SET     @p = 0x

SELECT Cast(@p as binary(1))

BeforeExecute
-- SqlServer.2019
DECLARE @p Binary(0)
SET     @p = 0x

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p Image(0) -- Binary
SET     @p = 0x

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x3039

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT @p

BeforeExecute
-- SqlServer.2019
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT @p

