BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO AllTypes (ID, intDataType) VALUES (153,200)
	INTO AllTypes (ID, intDataType) VALUES (163,300)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 143

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
-- Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 143

DELETE FROM
	AllTypes t1
WHERE
	t1.ID >= :lastId

