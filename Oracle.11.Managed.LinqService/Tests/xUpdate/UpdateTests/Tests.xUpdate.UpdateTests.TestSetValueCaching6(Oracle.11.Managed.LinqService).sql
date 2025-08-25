BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Value6 Int32
SET     @Value6 = 7
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value6" = :Value6
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value6"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Value6 Int32
SET     @Value6 = 8
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value6" = :Value6
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value6"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id AND ROWNUM <= 2

