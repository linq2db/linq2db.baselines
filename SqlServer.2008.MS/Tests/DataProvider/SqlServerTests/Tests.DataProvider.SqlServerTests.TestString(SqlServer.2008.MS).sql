-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as char)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as char(20))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL    as char(20))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as varchar)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as varchar(20))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL    as varchar(20))

-- SqlServer.2008.MS SqlServer.2008

SELECT COUNT(*) FROM sys.databases WHERE database_id = DB_ID() AND collation_name LIKE '%_SC'

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as text)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL    as text)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as varchar(max))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL    as varchar(max))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as nchar)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as nchar(20))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL    as nchar(20))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as nvarchar)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as nvarchar(20))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL    as nvarchar(20))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as ntext)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL    as ntext)

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast('12345' as nvarchar(max))

-- SqlServer.2008.MS SqlServer.2008

SELECT Cast(NULL    as nvarchar(max))

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = N'123'

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'123'

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p Text(3) -- AnsiString
SET     @p = N'123'

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NChar(3) -- StringFixedLength
SET     @p = N'123'

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NText(3) -- String
SET     @p = N'123'

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT @p

-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'1'

SELECT @p

