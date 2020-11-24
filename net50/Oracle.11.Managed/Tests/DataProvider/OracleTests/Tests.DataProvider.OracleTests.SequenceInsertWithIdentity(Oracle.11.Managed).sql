BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Value_1 Varchar2(8) -- String
SET     @Value_1 = 'SeqValue'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID,
	t1.VALUE
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue' AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id1 Int32
SET     @id1 = 102

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.ID = :id1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

