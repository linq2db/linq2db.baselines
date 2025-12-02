-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 125,'Value' FROM DUAL  UNION ALL
	SELECT 126,'Value' FROM DUAL  UNION ALL
	SELECT 127,'Value' FROM DUAL  UNION ALL
	SELECT 128,'Value' FROM DUAL 

