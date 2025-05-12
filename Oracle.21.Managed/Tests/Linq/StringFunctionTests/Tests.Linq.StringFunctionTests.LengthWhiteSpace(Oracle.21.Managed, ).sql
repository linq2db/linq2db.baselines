BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @stringValue Varchar2(1) -- String
SET     @stringValue = ' '
DECLARE @stringValue_1 Int32
SET     @stringValue_1 = 1

SELECT
	:stringValue,
	:stringValue_1
FROM SYS.DUAL

