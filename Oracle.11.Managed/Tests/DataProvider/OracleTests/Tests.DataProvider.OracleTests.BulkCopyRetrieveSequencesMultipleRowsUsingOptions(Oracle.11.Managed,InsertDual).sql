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

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 33,'Value' FROM DUAL  UNION ALL
	SELECT 34,'Value' FROM DUAL  UNION ALL
	SELECT 35,'Value' FROM DUAL  UNION ALL
	SELECT 36,'Value' FROM DUAL 

