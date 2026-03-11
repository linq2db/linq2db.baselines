-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."datetimeoffsetDataType"
FROM
	"AllTypes" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @MyDate TimeStampTZ -- DateTimeOffset
SET     @MyDate = NULL
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	"AllTypes" mt
SET
	"datetimeoffsetDataType" = :MyDate
WHERE
	mt.ID = :ID

-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"AllTypes" mt
SET
	"datetimeoffsetDataType" = NULL
WHERE
	mt.ID = 1

