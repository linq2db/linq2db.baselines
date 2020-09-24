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

INSERT ALL
	INTO SequenceTest (ID, Value) VALUES (25,'Value')
	INTO SequenceTest (ID, Value) VALUES (26,'Value')
	INTO SequenceTest (ID, Value) VALUES (27,'Value')
	INTO SequenceTest (ID, Value) VALUES (28,'Value')
SELECT * FROM dual

