BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as char)

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as char(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as char(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(NULL    as char(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as varchar)

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as varchar(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(NULL    as varchar(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as text)

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(NULL    as text)

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as nchar)

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as nchar(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(NULL    as nchar(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as nvarchar)

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as nvarchar(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(NULL    as nvarchar(20))

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast('12345' as unitext)

BeforeExecute
-- Sybase.Managed Sybase

SELECT Cast(NULL    as unitext)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = '123'

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p VarChar(3) -- AnsiString
SET     @p = '123'

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Text(3) -- AnsiString
SET     @p = '123'

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniChar(3) -- StringFixedLength
SET     @p = '123'

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Unitext(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar -- String
SET     @p = NULL

SELECT @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar(1) -- String
SET     @p = '1'

SELECT @p

