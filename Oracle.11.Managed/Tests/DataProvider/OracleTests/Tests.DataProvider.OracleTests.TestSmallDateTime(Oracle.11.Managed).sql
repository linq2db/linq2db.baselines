-- Oracle.11.Managed Oracle11
DECLARE @p Date
SET     @p = TIMESTAMP '2012-12-12 12:12:00.000000'

SELECT :p FROM sys.dual -- cache-buster: 10

-- Oracle.11.Managed Oracle11
DECLARE @p Date
SET     @p = TIMESTAMP '2012-12-12 12:12:00.000000'

SELECT :p FROM sys.dual -- cache-buster: 11

