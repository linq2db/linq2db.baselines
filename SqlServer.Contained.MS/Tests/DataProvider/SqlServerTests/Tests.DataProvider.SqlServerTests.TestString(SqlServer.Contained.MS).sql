﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as char)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as char(20))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(NULL    as char(20))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as varchar)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as varchar(20))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(NULL    as varchar(20))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT COUNT(*) FROM sys.databases WHERE database_id = DB_ID() AND collation_name LIKE '%_SC'

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as text)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(NULL    as text)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as varchar(max))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(NULL    as varchar(max))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as nchar)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as nchar(20))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(NULL    as nchar(20))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as nvarchar)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as nvarchar(20))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(NULL    as nvarchar(20))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as ntext)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(NULL    as ntext)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast('12345' as nvarchar(max))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT Cast(NULL    as nvarchar(max))

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = N'123'

SELECT @p

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'123'

SELECT @p

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Text(3) -- AnsiString
SET     @p = N'123'

SELECT @p

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p NChar(3) -- StringFixedLength
SET     @p = N'123'

SELECT @p

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT @p

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p NText(3) -- String
SET     @p = N'123'

SELECT @p

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT @p

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = NULL

SELECT @p

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'1'

SELECT @p

