-- Oracle.11.Managed Oracle11
SELECT XMLTYPE('<xml/>') FROM sys.dual

-- Oracle.11.Managed Oracle11
SELECT XMLTYPE('<xml/>') FROM sys.dual

-- Oracle.11.Managed Oracle11
SELECT XMLTYPE('<xml/>') FROM sys.dual

-- Oracle.11.Managed Oracle11
DECLARE @p XmlType(6) -- String
SET     @p = '<xml/>'

SELECT :p FROM sys.dual -- cache-buster: 52

-- Oracle.11.Managed Oracle11
DECLARE @p XmlType(7) -- String
SET     @p = '<xml />'

SELECT :p FROM sys.dual -- cache-buster: 53

-- Oracle.11.Managed Oracle11
DECLARE @p XmlType(7) -- String
SET     @p = '<xml />'

SELECT :p FROM sys.dual -- cache-buster: 54

-- Oracle.11.Managed Oracle11
DECLARE @p XmlType(7) -- String
SET     @p = '<xml />'

SELECT :p FROM sys.dual -- cache-buster: 55

-- Oracle.11.Managed Oracle11
DECLARE @p XmlType(7) -- String
SET     @p = '<xml />'

SELECT :p FROM sys.dual -- cache-buster: 56

