-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 0
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	:Value
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "AllTypes" ("intDataType") VALUES (200)
	INTO "AllTypes" ("intDataType") VALUES (300)
SELECT * FROM dual

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 3

SELECT
	t1.ID,
	t1."intDataType"
FROM
	"AllTypes" t1
WHERE
	t1.ID > :lastId
ORDER BY
	t1.ID

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID >= :lastId

