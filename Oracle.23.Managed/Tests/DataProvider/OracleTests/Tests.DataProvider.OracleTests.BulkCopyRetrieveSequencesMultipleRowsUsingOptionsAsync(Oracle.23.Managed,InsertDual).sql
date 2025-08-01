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
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 121,'Value' FROM DUAL  UNION ALL
	SELECT 122,'Value' FROM DUAL  UNION ALL
	SELECT 123,'Value' FROM DUAL  UNION ALL
	SELECT 124,'Value' FROM DUAL 

