-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 33,'Value' FROM DUAL  UNION ALL
	SELECT 34,'Value' FROM DUAL  UNION ALL
	SELECT 35,'Value' FROM DUAL  UNION ALL
	SELECT 36,'Value' FROM DUAL 

