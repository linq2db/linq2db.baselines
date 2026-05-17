-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO SEQUENCETEST (ID, VALUE) VALUES (25,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (26,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (27,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (28,'Value')
SELECT * FROM dual

