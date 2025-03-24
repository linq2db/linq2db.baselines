BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @stringValue Varchar2(1) -- String
SET     @stringValue = ' '

SELECT
	:stringValue,
	LENGTH(:stringValue)
FROM SYS.DUAL

