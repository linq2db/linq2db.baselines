﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @s Varchar2(8) -- String
SET     @s = '123[[456'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE '%[[%' ESCAPE '~'

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @s Varchar2(8) -- String
SET     @s = '123[[456'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT LIKE '%[[%' ESCAPE '~'

