﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DROP SEQUENCE "AllTypesSeq"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "AllTypesSeq" MINVALUE 1 START WITH 3

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 200

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 300

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID >= :lastId

