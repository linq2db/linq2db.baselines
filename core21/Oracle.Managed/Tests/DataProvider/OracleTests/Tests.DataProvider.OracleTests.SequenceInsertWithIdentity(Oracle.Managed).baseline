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
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING 
	ID INTO :IDENTITY_PARAMETER

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
DECLARE @id1 Int32
SET     @id1 = 98

DELETE FROM
	SequenceTest t1
WHERE
	t1.ID = :id1

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue'

