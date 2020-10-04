BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	SequenceTest t1
WHERE
	t1.Value = 'SeqValue'

BeforeExecute
-- Oracle.Managed Oracle12

SELECT SequenceTestSeq.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO SequenceTest
(
	ID,
	Value
)

	SELECT 41,'Value' FROM DUAL  UNION ALL
	SELECT 42,'Value' FROM DUAL  UNION ALL
	SELECT 43,'Value' FROM DUAL  UNION ALL
	SELECT 44,'Value' FROM DUAL 

