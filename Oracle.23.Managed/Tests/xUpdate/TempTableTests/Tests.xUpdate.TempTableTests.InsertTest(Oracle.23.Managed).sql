﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "Table2"
(
	ID
)
SELECT
	t.ID
FROM
	"Table1" t

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Date"
FROM
	"Table2" t1

