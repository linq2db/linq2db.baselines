﻿BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue' AND t1.VALUE IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO SEQUENCETEST (ID, VALUE) VALUES (25,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (26,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (27,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (28,'Value')
SELECT * FROM dual

