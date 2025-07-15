BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."datetimeoffsetDataType"
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @MyDate TimeStampTZ -- DateTime
SET     @MyDate = NULL
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	"AllTypes" mt
SET
	"datetimeoffsetDataType" = :MyDate
WHERE
	mt.ID = :ID

BeforeExecute
-- Oracle.11.Managed Oracle11

UPDATE
	"AllTypes" mt
SET
	"datetimeoffsetDataType" = NULL
WHERE
	mt.ID = 1

