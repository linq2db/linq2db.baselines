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

INSERT ALL
	INTO SequenceTest (ID, Value) VALUES (1,'Value')
	INTO SequenceTest (ID, Value) VALUES (2,'Value')
	INTO SequenceTest (ID, Value) VALUES (3,'Value')
	INTO SequenceTest (ID, Value) VALUES (4,'Value')
SELECT * FROM dual

