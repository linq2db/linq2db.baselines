BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Int32
SET     @Value_1 = 0
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	:Value_1
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

INSERT ALL
	INTO AllTypes (ID, intDataType) VALUES (312,200)
	INTO AllTypes (ID, intDataType) VALUES (322,300)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @lastId Int32
SET     @lastId = 302

SELECT
	t1.ID,
	t1.intDataType
FROM
	AllTypes t1
WHERE
	t1.ID > :lastId
ORDER BY
	t1.ID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @lastId Int32
SET     @lastId = 302

DELETE FROM
	AllTypes t1
WHERE
	t1.ID >= :lastId

