BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO SEQUENCETEST (ID, VALUE) VALUES (1,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (2,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (3,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (4,'Value')
SELECT * FROM dual

