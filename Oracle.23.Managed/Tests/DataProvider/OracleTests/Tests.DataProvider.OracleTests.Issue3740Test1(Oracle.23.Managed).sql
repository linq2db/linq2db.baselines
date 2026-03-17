-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE OR REPLACE FUNCTION ISSUE3742(myParameter IN VARCHAR2) RETURN BOOLEAN AS BEGIN RETURN TRUE; END;

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Varchar2(255) -- String
SET     @p = 'test'

WITH
FUNCTION convert_bool(i IN VARCHAR2) RETURN NUMBER AS
BEGIN
	RETURN CASE ISSUE3742(i) WHEN TRUE THEN 1 WHEN FALSE THEN 0 END;
END convert_bool;
SELECT convert_bool(:p) FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12

DROP FUNCTION ISSUE3742

