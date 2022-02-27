BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."datetimeoffsetDataType"
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @MyDate TimeStampTZ -- DateTimeOffset
SET     @MyDate = NULL
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	"AllTypes"
SET
	"AllTypes"."datetimeoffsetDataType" = :MyDate
WHERE
	"AllTypes".ID = :ID

BeforeExecute
-- Oracle.Managed Oracle12

UPDATE
	"AllTypes"
SET
	"AllTypes"."datetimeoffsetDataType" = NULL
WHERE
	"AllTypes".ID = 1

