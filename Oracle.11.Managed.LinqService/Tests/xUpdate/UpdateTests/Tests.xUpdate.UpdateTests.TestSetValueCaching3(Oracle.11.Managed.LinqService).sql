﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Value3 Int32
SET     @Value3 = 7
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value3" = :Value3
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value3"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Value3 Int32
SET     @Value3 = 8
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value3" = :Value3
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value3"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id AND ROWNUM <= 2

