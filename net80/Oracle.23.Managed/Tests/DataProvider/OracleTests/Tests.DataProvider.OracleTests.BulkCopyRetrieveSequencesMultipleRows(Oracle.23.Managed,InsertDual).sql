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
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 9,'Value' FROM DUAL  UNION ALL
	SELECT 10,'Value' FROM DUAL  UNION ALL
	SELECT 11,'Value' FROM DUAL  UNION ALL
	SELECT 12,'Value' FROM DUAL 

