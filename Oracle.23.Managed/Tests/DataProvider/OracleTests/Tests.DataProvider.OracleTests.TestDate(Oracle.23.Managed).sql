-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Date
SET     @p = TIMESTAMP '2012-12-12 00:00:00.000000'

SELECT :p FROM sys.dual -- cache-buster: 8

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Date
SET     @p = TIMESTAMP '2012-12-12 00:00:00.000000'

SELECT :p FROM sys.dual -- cache-buster: 9

