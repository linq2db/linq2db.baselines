BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE DateTimeOffsetTable
(
	DateTimeOffsetValue timestamp with time zone NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @DateTimeOffsetValue TimeStampTZ -- DateTimeOffset
SET     @DateTimeOffsetValue = 03/30/2017 15:32:58.512655 +03:00

INSERT INTO DateTimeOffsetTable
(
	DateTimeOffsetValue
)
VALUES
(
	:DateTimeOffsetValue
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	x.DateTimeOffsetValue
FROM
	DateTimeOffsetTable x
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE DateTimeOffsetTable

