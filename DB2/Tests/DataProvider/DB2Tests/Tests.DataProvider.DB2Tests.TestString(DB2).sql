﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT Cast('12345' as char(5)) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT Cast('12345' as char(20)) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT Cast(NULL    as char(20)) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT Cast('12345' as varchar(5)) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT Cast('12345' as varchar(20)) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT Cast(NULL    as varchar(20)) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT Cast('12345' as clob) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT Cast(NULL    as clob) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p Char(3) -- StringFixedLength
SET     @p = '123'

SELECT Cast(@p as char(3))     FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as varchar(3))  FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as char(3))     FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p Char(3) -- StringFixedLength
SET     @p = '123'

SELECT Cast(@p as nchar(3))    FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as nvarchar(3)) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as nchar(3))    FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT Cast(@p as char(3))     FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p VarChar -- String
SET     @p = NULL

SELECT Cast(@p as char) FROM SYSIBM.SYSDUMMY1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT Cast(@p as char) FROM SYSIBM.SYSDUMMY1

