BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
INSERT BULK SEQUENCETEST(ID, VALUE)

