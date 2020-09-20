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
	INTO SequenceTest (ID, Value) VALUES (1,'Value')
	INTO SequenceTest (ID, Value) VALUES (2,'Value')
	INTO SequenceTest (ID, Value) VALUES (3,'Value')
	INTO SequenceTest (ID, Value) VALUES (4,'Value')
SELECT * FROM dual

