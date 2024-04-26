BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1.VALUE
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue' AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 201

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.ID = :id

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

