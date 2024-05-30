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
	:Value
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

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
DECLARE @id1 Int32
SET     @id1 = 202

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.ID = :id1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

