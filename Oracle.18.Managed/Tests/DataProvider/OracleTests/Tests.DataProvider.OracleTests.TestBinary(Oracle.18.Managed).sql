-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT to_blob('3039')     FROM sys.dual

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT to_blob('00003039') FROM sys.dual

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = NULL

SELECT :p FROM sys.dual -- cache-buster: 41

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = HEXTORAW('3039')

SELECT :p FROM sys.dual -- cache-buster: 42

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = HEXTORAW('3039')

SELECT :p FROM sys.dual -- cache-buster: 43

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = HEXTORAW('3039')

SELECT :p FROM sys.dual -- cache-buster: 44

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = HEXTORAW('')

SELECT :p FROM sys.dual -- cache-buster: 45

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = HEXTORAW('')

SELECT :p FROM sys.dual -- cache-buster: 46

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = HEXTORAW('3039')

SELECT :p FROM sys.dual -- cache-buster: 47

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = HEXTORAW('3039')

SELECT :p FROM sys.dual -- cache-buster: 48

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Blob -- Object
SET     @p = HEXTORAW('3039')

SELECT :p FROM sys.dual -- cache-buster: 49

