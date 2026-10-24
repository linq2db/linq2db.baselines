-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(1) -- String
SET     @p = 'A'

SELECT :p FROM sys.dual -- cache-buster: 57

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(1) -- String
SET     @p = 'B'

SELECT :p FROM sys.dual -- cache-buster: 58

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(255) -- String
SET     @p = 'A'

SELECT :p FROM sys.dual -- cache-buster: 59

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(255) -- String
SET     @p = 'A'

SELECT :p FROM sys.dual -- cache-buster: 60

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(255) -- String
SET     @p = 'A'

SELECT :p FROM sys.dual -- cache-buster: 61

