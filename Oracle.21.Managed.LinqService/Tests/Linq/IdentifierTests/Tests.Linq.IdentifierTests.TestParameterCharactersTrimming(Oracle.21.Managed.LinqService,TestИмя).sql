﻿BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Test Int32
SET     @Test = 2

UPDATE
	"testparams" t
SET
	"TestИмя" = :Test
WHERE
	t."TestИмя" = 1

