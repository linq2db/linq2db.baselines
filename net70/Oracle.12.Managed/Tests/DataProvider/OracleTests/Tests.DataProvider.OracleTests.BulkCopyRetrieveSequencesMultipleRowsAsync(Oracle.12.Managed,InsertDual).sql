BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 21,'Value' FROM DUAL  UNION ALL
	SELECT 22,'Value' FROM DUAL  UNION ALL
	SELECT 23,'Value' FROM DUAL  UNION ALL
	SELECT 24,'Value' FROM DUAL 

