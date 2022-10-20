﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @data_1 Bytea -- Binary
SET     @data_1 = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BinaryValue",
	"BoolValue"
)
VALUES
(
	1001,
	:data_1,
	True
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"LinqDataTypes" t1
WHERE
	t1."ID" > 1000

