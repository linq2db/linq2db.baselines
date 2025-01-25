BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1.VALUE as "Value_1"
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 193

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.ID = :id

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

