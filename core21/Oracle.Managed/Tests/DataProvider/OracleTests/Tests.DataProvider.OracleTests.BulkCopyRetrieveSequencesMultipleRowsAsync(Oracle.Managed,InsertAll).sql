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
-- Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO SequenceTest (ID, Value) VALUES (13,'Value')
	INTO SequenceTest (ID, Value) VALUES (14,'Value')
	INTO SequenceTest (ID, Value) VALUES (15,'Value')
	INTO SequenceTest (ID, Value) VALUES (16,'Value')
SELECT * FROM dual

