-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(1) -- String
SET     @p = 'A'

SELECT :p FROM sys.dual -- cache-buster: 57

-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(1) -- String
SET     @p = 'B'

SELECT :p FROM sys.dual -- cache-buster: 58

-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(255) -- String
SET     @p = 'A'

SELECT :p FROM sys.dual -- cache-buster: 59

-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(255) -- String
SET     @p = 'A'

SELECT :p FROM sys.dual -- cache-buster: 60

-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2(255) -- String
SET     @p = 'A'

SELECT :p FROM sys.dual -- cache-buster: 61

