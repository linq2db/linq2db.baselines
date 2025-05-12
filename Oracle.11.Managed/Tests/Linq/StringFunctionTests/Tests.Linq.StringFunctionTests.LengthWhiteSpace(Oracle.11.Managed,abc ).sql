BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @stringValue Varchar2(4) -- String
SET     @stringValue = 'abc '

SELECT
	:stringValue,
	LENGTH(:stringValue)
FROM SYS.DUAL

