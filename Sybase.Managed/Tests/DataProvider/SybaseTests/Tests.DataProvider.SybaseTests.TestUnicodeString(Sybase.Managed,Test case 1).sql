-- Sybase.Managed Sybase

SELECT Cast(u&'''\2000\2001\2002\2003\abab\03bctst тест' as char)

-- Sybase.Managed Sybase

SELECT Cast(u&'''\2000\2001\2002\2003\abab\03bctst тест' as varchar)

-- Sybase.Managed Sybase

SELECT Cast(u&'''\2000\2001\2002\2003\abab\03bctst тест' as text)

-- Sybase.Managed Sybase

SELECT Cast(u&'''\2000\2001\2002\2003\abab\03bctst тест' as nchar)

-- Sybase.Managed Sybase

SELECT Cast(u&'''\2000\2001\2002\2003\abab\03bctst тест' as nvarchar)

-- Sybase.Managed Sybase

SELECT Cast(u&'''\2000\2001\2002\2003\abab\03bctst тест' as unitext)

-- Sybase.Managed Sybase
DECLARE @p Char(15) -- AnsiStringFixedLength
SET     @p = '''    ꮫμtst тест'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p VarChar(15) -- AnsiString
SET     @p = '''    ꮫμtst тест'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p Text(15) -- AnsiString
SET     @p = '''    ꮫμtst тест'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p UniChar(15) -- StringFixedLength
SET     @p = '''    ꮫμtst тест'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p UniVarChar(15) -- String
SET     @p = '''    ꮫμtst тест'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p Unitext(15) -- String
SET     @p = '''    ꮫμtst тест'

SELECT @p

-- Sybase.Managed Sybase
DECLARE @p UniVarChar(15) -- String
SET     @p = '''    ꮫμtst тест'

SELECT @p

-- Sybase.Managed Sybase

SELECT
	1

-- Sybase.Managed Sybase

SELECT
	1

