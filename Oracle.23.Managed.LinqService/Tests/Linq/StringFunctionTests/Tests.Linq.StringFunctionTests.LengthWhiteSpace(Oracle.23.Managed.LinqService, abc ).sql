BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @stringValue Varchar2(5) -- String
SET     @stringValue = ' abc '

SELECT
	:stringValue,
	LENGTH(:stringValue)
FROM SYS.DUAL

