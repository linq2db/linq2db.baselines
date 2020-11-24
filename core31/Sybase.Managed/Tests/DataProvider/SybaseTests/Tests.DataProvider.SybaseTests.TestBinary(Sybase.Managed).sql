BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(12345 as binary(2))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(12345 as binary(4))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(12345 as varbinary(2))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(12345 as varbinary(4))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(NULL as image)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Binary(2)
SET     @p = 0x3930

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3930

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3930

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p VarBinary -- Binary
SET     @p = NULL

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Binary(0)
SET     @p = 0x

SELECT Cast(@p as binary(1))

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Binary(0)
SET     @p = 0x

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p VarBinary(0) -- Binary
SET     @p = 0x

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Image(0) -- Binary
SET     @p = 0x

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Image(4) -- Binary
SET     @p = 0x39300000

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3930

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3930

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3930

SELECT @p

