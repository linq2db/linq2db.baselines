-- SapHana.Native SapHana
SELECT Cast('12345' as char(20)) from dummy

-- SapHana.Native SapHana
SELECT Cast(NULL    as char(20)) from dummy

-- SapHana.Native SapHana
DECLARE @p VarChar(3) -- AnsiStringFixedLength
SET     @p = '123'

SELECT :p from dummy

-- SapHana.Native SapHana
DECLARE @p VarChar(3) -- AnsiString
SET     @p = '123'

SELECT :p from dummy

-- SapHana.Native SapHana
DECLARE @p Text(3) -- String
SET     @p = '123'

SELECT :p from dummy

-- SapHana.Native SapHana
DECLARE @p NVarChar(3) -- StringFixedLength
SET     @p = '123'

SELECT :p from dummy

-- SapHana.Native SapHana
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT :p from dummy

-- SapHana.Native SapHana
DECLARE @p NClob -- Xml
SET     @p = '123'

SELECT :p from dummy

-- SapHana.Native SapHana
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT :p from dummy

-- SapHana.Native SapHana
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT :p from dummy

