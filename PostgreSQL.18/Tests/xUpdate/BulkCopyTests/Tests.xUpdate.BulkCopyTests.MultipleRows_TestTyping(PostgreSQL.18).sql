﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

INSERT INTO "MultipleRowsTable"
(
	"Id",
	"DecimalValue1",
	"DecimalValue2"
)
VALUES
(1,NULL,1),
(2,1.5,-2.6)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."DecimalValue1",
	t1."DecimalValue2"
FROM
	"MultipleRowsTable" t1
ORDER BY
	t1."Id"

