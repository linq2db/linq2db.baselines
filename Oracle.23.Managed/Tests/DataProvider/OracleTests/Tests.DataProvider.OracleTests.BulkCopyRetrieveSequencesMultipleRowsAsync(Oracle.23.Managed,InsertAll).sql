BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO SEQUENCETEST (ID, VALUE) VALUES (13,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (14,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (15,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (16,'Value')
SELECT * FROM dual

