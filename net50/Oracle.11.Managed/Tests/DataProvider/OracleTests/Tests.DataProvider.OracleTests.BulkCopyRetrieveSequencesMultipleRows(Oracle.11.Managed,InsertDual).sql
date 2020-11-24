BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 5,'Value' FROM DUAL  UNION ALL
	SELECT 6,'Value' FROM DUAL  UNION ALL
	SELECT 7,'Value' FROM DUAL  UNION ALL
	SELECT 8,'Value' FROM DUAL 

