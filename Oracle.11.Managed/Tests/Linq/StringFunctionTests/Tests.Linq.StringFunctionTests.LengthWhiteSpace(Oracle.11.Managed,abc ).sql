BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @stringValue Varchar2(4) -- String
SET     @stringValue = 'abc '
DECLARE @stringValue_1 Int32
SET     @stringValue_1 = 4

SELECT
	:stringValue,
	:stringValue_1
FROM SYS.DUAL

