BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Value_1 Varchar2(8) -- String
SET     @Value_1 = 'SeqValue'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value_1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID,
	t1.VALUE
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 97

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.ID = :id

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

