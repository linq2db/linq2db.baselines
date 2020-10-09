BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.ID, 
	t1.datetimeoffsetDataType
FROM
	AllTypes t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @MyDate TimeStampTZ -- DateTimeOffset
SET     @MyDate = NULL
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	AllTypes
SET
	AllTypes.datetimeoffsetDataType = :MyDate
WHERE
	AllTypes.ID = :ID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

UPDATE
	AllTypes
SET
	AllTypes.datetimeoffsetDataType = NULL
WHERE
	AllTypes.ID = 1

