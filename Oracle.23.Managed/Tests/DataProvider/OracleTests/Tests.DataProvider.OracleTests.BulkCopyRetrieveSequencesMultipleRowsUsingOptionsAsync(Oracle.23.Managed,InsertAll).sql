-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO SEQUENCETEST (ID, VALUE) VALUES (111,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (112,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (113,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (114,'Value')
SELECT * FROM dual

