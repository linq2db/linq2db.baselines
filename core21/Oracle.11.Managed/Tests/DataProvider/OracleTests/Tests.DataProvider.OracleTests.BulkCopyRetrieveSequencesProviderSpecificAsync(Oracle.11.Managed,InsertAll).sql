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
	INTO SequenceTest (ID, Value) VALUES (37,'Value')
	INTO SequenceTest (ID, Value) VALUES (38,'Value')
	INTO SequenceTest (ID, Value) VALUES (39,'Value')
	INTO SequenceTest (ID, Value) VALUES (40,'Value')
SELECT * FROM dual

