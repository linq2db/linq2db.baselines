-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as char)

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as char(20))

-- SqlServer.SA SqlServer.2019

SELECT Cast(NULL    as char(20))

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as varchar)

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as varchar(20))

-- SqlServer.SA SqlServer.2019

SELECT Cast(NULL    as varchar(20))

-- SqlServer.SA SqlServer.2019

SELECT COUNT(*) FROM sys.databases WHERE database_id = DB_ID() AND collation_name LIKE '%_SC'

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as text)

-- SqlServer.SA SqlServer.2019

SELECT Cast(NULL    as text)

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as varchar(max))

-- SqlServer.SA SqlServer.2019

SELECT Cast(NULL    as varchar(max))

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as nchar)

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as nchar(20))

-- SqlServer.SA SqlServer.2019

SELECT Cast(NULL    as nchar(20))

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as nvarchar)

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as nvarchar(20))

-- SqlServer.SA SqlServer.2019

SELECT Cast(NULL    as nvarchar(20))

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as ntext)

-- SqlServer.SA SqlServer.2019

SELECT Cast(NULL    as ntext)

-- SqlServer.SA SqlServer.2019

SELECT Cast('12345' as nvarchar(max))

-- SqlServer.SA SqlServer.2019

SELECT Cast(NULL    as nvarchar(max))

-- SqlServer.SA SqlServer.2019
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = N'123'

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'123'

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p Text(3) -- AnsiString
SET     @p = N'123'

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NChar(3) -- StringFixedLength
SET     @p = N'123'

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NText(3) -- String
SET     @p = N'123'

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT @p

-- SqlServer.SA SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'1'

SELECT @p

