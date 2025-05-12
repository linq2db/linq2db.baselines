BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @stringValue Varchar2(5) -- String
SET     @stringValue = ' abc '
DECLARE @stringValue_1 Int32
SET     @stringValue_1 = 5

SELECT
	:stringValue,
	:stringValue_1
FROM SYS.DUAL

