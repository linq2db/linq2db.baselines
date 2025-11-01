-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 45,'Value' FROM DUAL  UNION ALL
	SELECT 46,'Value' FROM DUAL  UNION ALL
	SELECT 47,'Value' FROM DUAL  UNION ALL
	SELECT 48,'Value' FROM DUAL 

