-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = NULL

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Char -- AnsiStringFixedLength
SET     @p = '1'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                 

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                  

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(255) -- String
SET     @p = '1'

SELECT :p FROM sys.dual                                                                                                                                                                                                                                                   

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT :p FROM sys.dual

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p1 Varchar2(1) -- String
SET     @p1 = '1'

SELECT :p1 FROM sys.dual

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p1 Int32
SET     @p1 = 2
DECLARE @p2 Int32
SET     @p2 = 3

SELECT :p1 + :p2 FROM sys.dual

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p2 Int32
SET     @p2 = 2
DECLARE @p1 Int32
SET     @p1 = 3

SELECT :p2 + :p1 FROM sys.dual

