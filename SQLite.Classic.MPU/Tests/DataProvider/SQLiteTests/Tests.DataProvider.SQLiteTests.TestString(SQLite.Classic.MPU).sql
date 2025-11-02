-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as char)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as char(20))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast(NULL    as char(20))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as varchar)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as varchar(20))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast(NULL    as varchar(20))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as text)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast(NULL    as text)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as nchar)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as nchar(20))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast(NULL    as nchar(20))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as nvarchar)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as nvarchar(20))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast(NULL    as nvarchar(20))

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast('12345' as ntext)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT Cast(NULL    as ntext)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = '123'

SELECT @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p VarChar(3) -- AnsiString
SET     @p = '123'

SELECT @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NChar(3) -- StringFixedLength
SET     @p = '123'

SELECT @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT @p

