﻿BeforeExecute
--  Oracle.11.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
--  Oracle.11.Managed Oracle11 (asynchronously)

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)

	SELECT 21,'Value' FROM DUAL  UNION ALL
	SELECT 22,'Value' FROM DUAL  UNION ALL
	SELECT 23,'Value' FROM DUAL  UNION ALL
	SELECT 24,'Value' FROM DUAL 

