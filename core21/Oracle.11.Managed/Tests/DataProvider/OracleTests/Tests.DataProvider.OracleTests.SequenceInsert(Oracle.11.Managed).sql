BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT 
	t1.ID, 
	t1.Value
FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 101

DELETE FROM
	SequenceTest t1
WHERE
	t1.ID = :id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Count(*)
FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue'

