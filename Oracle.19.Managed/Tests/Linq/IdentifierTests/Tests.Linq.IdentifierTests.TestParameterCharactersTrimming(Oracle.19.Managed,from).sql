﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @from_1 Int32
SET     @from_1 = 2

UPDATE
	"testparams" t
SET
	"from" = :from_1
WHERE
	t."from" = 1

