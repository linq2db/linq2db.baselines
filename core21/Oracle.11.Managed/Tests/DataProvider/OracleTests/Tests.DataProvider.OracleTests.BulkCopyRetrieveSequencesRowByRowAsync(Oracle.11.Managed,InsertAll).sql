BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT SequenceTestSeq.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Value'

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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Value'

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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Value'

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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Value'

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

