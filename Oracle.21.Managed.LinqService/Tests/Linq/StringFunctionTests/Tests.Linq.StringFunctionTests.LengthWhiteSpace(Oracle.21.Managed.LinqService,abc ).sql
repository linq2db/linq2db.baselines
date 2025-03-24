BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @stringValue Varchar2(4) -- String
SET     @stringValue = 'abc '

SELECT
	:stringValue,
	LENGTH(:stringValue)
FROM SYS.DUAL

