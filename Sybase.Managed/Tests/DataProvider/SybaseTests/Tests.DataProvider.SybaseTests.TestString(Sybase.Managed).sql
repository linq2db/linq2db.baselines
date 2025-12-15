-- Sybase.Managed Sybase

SELECT Cast('12345' as char)

-- Sybase.Managed Sybase

SELECT Cast('12345' as char(20))

-- Sybase.Managed Sybase

SELECT Cast('12345' as char(20))

-- Sybase.Managed Sybase

SELECT Cast(NULL    as char(20))

-- Sybase.Managed Sybase

SELECT Cast('12345' as varchar)

-- Sybase.Managed Sybase

SELECT Cast('12345' as varchar(20))

-- Sybase.Managed Sybase

SELECT Cast(NULL    as varchar(20))

-- Sybase.Managed Sybase

SELECT Cast('12345' as text)

-- Sybase.Managed Sybase

SELECT Cast(NULL    as text)

-- Sybase.Managed Sybase

SELECT Cast('12345' as nchar)

-- Sybase.Managed Sybase

SELECT Cast('12345' as nchar(20))

-- Sybase.Managed Sybase

SELECT Cast(NULL    as nchar(20))

-- Sybase.Managed Sybase

SELECT Cast('12345' as nvarchar)

-- Sybase.Managed Sybase

SELECT Cast('12345' as nvarchar(20))

-- Sybase.Managed Sybase

SELECT Cast(NULL    as nvarchar(20))

-- Sybase.Managed Sybase

SELECT Cast('12345' as unitext)

-- Sybase.Managed Sybase

SELECT Cast(NULL    as unitext)

-- Sybase.Managed Sybase
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = '123'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p VarChar(3) -- AnsiString
SET     @p = '123'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p Text(3) -- AnsiString
SET     @p = '123'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p UniChar(3) -- StringFixedLength
SET     @p = '123'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p UniVarChar(3) -- String
SET     @p = '123'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p Unitext(3) -- String
SET     @p = '123'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p UniVarChar(3) -- String
SET     @p = '123'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p UniVarChar -- String
SET     @p = NULL

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p UniVarChar(1) -- String
SET     @p = '1'

SELECT @p

