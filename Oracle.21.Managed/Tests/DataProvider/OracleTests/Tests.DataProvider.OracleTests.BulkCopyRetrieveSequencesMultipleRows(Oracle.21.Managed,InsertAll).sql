﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue' AND t1.VALUE IS NOT NULL

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO SEQUENCETEST (ID, VALUE) VALUES (1,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (2,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (3,'Value')
	INTO SEQUENCETEST (ID, VALUE) VALUES (4,'Value')
SELECT * FROM dual

