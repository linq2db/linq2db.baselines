-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT XMLTYPE('<xml/>') FROM sys.dual

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT XMLTYPE('<xml/>') FROM sys.dual

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT XMLTYPE('<xml/>') FROM sys.dual

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p XmlType(6) -- String
SET     @p = '<xml/>'

SELECT :p FROM sys.dual -- cache-buster: 52

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p XmlType(7) -- String
SET     @p = '<xml />'

SELECT :p FROM sys.dual -- cache-buster: 53

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p XmlType(7) -- String
SET     @p = '<xml />'

SELECT :p FROM sys.dual -- cache-buster: 54

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p XmlType(7) -- String
SET     @p = '<xml />'

SELECT :p FROM sys.dual -- cache-buster: 55

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p XmlType(7) -- String
SET     @p = '<xml />'

SELECT :p FROM sys.dual -- cache-buster: 56

