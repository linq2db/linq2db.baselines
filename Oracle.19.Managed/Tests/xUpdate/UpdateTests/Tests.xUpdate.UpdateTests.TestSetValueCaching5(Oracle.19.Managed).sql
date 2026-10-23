-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value5 Int32
SET     @Value5 = 11
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value5" = :Value5
WHERE
	t1."Id" = :id

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value5"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value5 Int32
SET     @Value5 = 12
DECLARE @id Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" t1
SET
	"Value5" = :Value5
WHERE
	t1."Id" = :id

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	t1."Value5"
FROM
	"UpdateSetTest" t1
WHERE
	t1."Id" = :id
FETCH NEXT 2 ROWS ONLY

