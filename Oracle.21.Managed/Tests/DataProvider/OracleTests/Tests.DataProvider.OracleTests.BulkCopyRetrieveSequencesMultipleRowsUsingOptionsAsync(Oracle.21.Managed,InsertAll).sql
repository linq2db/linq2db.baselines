-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO SEQUENCETEST (ID, VALUE) VALUES (37,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (38,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (39,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (40,'Value')
SELECT * FROM dual

