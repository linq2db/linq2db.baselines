BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @stringValue Varchar2(1) -- String
SET     @stringValue = ' '

SELECT
	:stringValue,
	LENGTH(:stringValue)
FROM SYS.DUAL

