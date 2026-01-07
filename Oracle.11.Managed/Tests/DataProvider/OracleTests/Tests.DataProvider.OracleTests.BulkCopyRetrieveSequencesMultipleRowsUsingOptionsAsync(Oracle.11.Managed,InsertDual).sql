-- Oracle.11.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.11.Managed Oracle11

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.11.Managed Oracle11

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 51,'Value' FROM DUAL  UNION ALL
	SELECT 52,'Value' FROM DUAL  UNION ALL
	SELECT 53,'Value' FROM DUAL  UNION ALL
	SELECT 54,'Value' FROM DUAL 

