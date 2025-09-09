BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Value2 Int32
SET     @Value2 = 11
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value2" = :Value2
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value2"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Value2 Int32
SET     @Value2 = 12
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value2" = :Value2
WHERE
	t1."Id" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value2"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id AND ROWNUM <= 2

