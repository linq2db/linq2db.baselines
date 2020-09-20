BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE DateTimeOffsetTable
(
	DateTimeOffsetValue timestamp with time zone NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @DateTimeOffsetValue TimeStampTZ -- DateTimeOffset
SET     @DateTimeOffsetValue = 01/01/2000 10:11:12 +05:00

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
	t1.DateTimeOffsetValue
FROM
	DateTimeOffsetTable t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE DateTimeOffsetTable

