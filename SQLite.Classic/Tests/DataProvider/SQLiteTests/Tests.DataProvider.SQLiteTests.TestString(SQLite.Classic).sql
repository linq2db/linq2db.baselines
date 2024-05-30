BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as char)

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as char(20))

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast(NULL    as char(20))

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as varchar)

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as varchar(20))

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast(NULL    as varchar(20))

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as text)

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast(NULL    as text)

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as nchar)

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as nchar(20))

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast(NULL    as nchar(20))

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as nvarchar)

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as nvarchar(20))

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast(NULL    as nvarchar(20))

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast('12345' as ntext)

BeforeExecute
-- SQLite.Classic SQLite

SELECT Cast(NULL    as ntext)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = '123'

SELECT @p

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p VarChar(3) -- AnsiString
SET     @p = '123'

SELECT @p

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NChar(3) -- StringFixedLength
SET     @p = '123'

SELECT @p

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar -- String
SET     @p = NULL

SELECT @p

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT @p

