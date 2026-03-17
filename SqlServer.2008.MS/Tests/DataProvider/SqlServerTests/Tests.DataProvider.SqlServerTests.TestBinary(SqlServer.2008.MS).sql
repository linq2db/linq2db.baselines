-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(12345 as binary(2))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(12345 as binary(4))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(12345 as varbinary(2))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(12345 as varbinary(4))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL as image)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(12345 as varbinary(max))

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Binary(2)
SET     @p = 0x3039

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x3039

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x3039

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = NULL

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Binary(0)
SET     @p = 0x

SELECT Cast(@p as binary(1))

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Binary(0)
SET     @p = 0x

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Image(0) -- Binary
SET     @p = 0x

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x3039

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarBinary(2) -- Binary
SET     @p = 0x3039

SELECT @p

