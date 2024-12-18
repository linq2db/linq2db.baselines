BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue' AND t1.VALUE IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
INSERT BULK SEQUENCETEST(ID, VALUE)

