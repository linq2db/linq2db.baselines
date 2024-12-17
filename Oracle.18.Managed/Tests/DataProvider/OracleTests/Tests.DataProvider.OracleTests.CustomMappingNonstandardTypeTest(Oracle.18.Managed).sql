BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."datetimeoffsetDataType"
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
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
-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"AllTypes" mt
SET
	"datetimeoffsetDataType" = NULL
WHERE
	mt.ID = 1

