BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.Managed Oracle12

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 41,'Value' FROM DUAL  UNION ALL
	SELECT 42,'Value' FROM DUAL  UNION ALL
	SELECT 43,'Value' FROM DUAL  UNION ALL
	SELECT 44,'Value' FROM DUAL 

