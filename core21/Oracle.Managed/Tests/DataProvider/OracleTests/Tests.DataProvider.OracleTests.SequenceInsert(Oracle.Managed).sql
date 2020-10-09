BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue'

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Value_1 Varchar2(8) -- String
SET     @Value_1 = 'SeqValue'

INSERT INTO SequenceTest
(
	ID,
	Value
)
VALUES
(
	SequenceTestSeq.nextval,
	:Value_1
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ID, 
	t1.Value
FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue'
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 97

DELETE FROM
	SequenceTest t1
WHERE
	t1.ID = :id

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Count(*)
FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue'

