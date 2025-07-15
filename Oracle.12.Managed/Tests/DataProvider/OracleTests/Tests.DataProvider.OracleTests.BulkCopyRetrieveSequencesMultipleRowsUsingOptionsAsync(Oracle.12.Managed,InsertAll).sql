BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT ALL
	INTO SEQUENCETEST (ID, VALUE) VALUES (37,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (38,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (39,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (40,'Value')
SELECT * FROM dual

