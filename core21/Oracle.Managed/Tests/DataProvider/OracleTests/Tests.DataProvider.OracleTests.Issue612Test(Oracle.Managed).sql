BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE DateTimeOffsetTable
(
	DateTimeOffsetValue timestamp with time zone NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	x.DateTimeOffsetValue
FROM
	DateTimeOffsetTable x
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE DateTimeOffsetTable

