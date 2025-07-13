BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
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

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO "AllTypes" ("intDataType") VALUES (200)
	INTO "AllTypes" ("intDataType") VALUES (300)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
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

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID >= :lastId

