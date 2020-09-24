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
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO SequenceTest
(
	ID,
	Value
)

	SELECT 5,'Value' FROM DUAL  UNION ALL
	SELECT 6,'Value' FROM DUAL  UNION ALL
	SELECT 7,'Value' FROM DUAL  UNION ALL
	SELECT 8,'Value' FROM DUAL 

