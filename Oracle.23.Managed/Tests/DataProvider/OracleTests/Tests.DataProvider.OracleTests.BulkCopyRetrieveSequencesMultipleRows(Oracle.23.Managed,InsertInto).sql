﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue' AND t1.VALUE IS NOT NULL

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = {5,6,7,8}
DECLARE @:p2 Varchar2 -- String
SET     @:p2 = {'Value','Value','Value','Value'}

INSERT INTO SEQUENCETEST (ID, VALUE) VALUES (:p1, :p2)

