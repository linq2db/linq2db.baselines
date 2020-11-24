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
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 17,'Value' FROM DUAL  UNION ALL
	SELECT 18,'Value' FROM DUAL  UNION ALL
	SELECT 19,'Value' FROM DUAL  UNION ALL
	SELECT 20,'Value' FROM DUAL 

