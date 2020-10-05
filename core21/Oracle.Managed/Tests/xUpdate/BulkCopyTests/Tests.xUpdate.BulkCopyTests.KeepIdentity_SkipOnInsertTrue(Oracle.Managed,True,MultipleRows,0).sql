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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO AllTypes (ID, intDataType) VALUES (261,200)
	INTO AllTypes (ID, intDataType) VALUES (271,300)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 251

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
SET     @lastId = 251

DELETE FROM
	AllTypes t1
WHERE
	t1.ID >= :lastId

