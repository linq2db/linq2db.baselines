BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT Cast('12345' as char(20)) FROM sys.dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT Cast(NULL    as char(20)) FROM sys.dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT Cast('12345' as varchar2(20)) FROM sys.dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT Cast(NULL    as varchar2(20)) FROM sys.dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT "textDataType" FROM "AllTypes" WHERE ID = 2

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT "textDataType" FROM "AllTypes" WHERE ID = 1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT Cast('12345' as nchar(20)) FROM sys.dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT Cast(NULL    as nchar(20)) FROM sys.dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT Cast('12345' as nvarchar2(20)) FROM sys.dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT Cast(NULL    as nvarchar2(20)) FROM sys.dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT "ntextDataType" FROM "AllTypes" WHERE ID = 2

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT "ntextDataType" FROM "AllTypes" WHERE ID = 1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = '123'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                      

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(3) -- String
SET     @p = '123'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                       

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Clob -- Object
SET     @p = '123'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                        

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Char(3) -- StringFixedLength
SET     @p = '123'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                         

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p NVarchar2(3) -- String
SET     @p = '123'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                          

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p NClob -- Object
SET     @p = '123'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                           

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p NVarchar2(3) -- String
SET     @p = '123'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                            

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p NVarchar2 -- String
SET     @p = NULL

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                             

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(1) -- String
SET     @p = '1'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                              

