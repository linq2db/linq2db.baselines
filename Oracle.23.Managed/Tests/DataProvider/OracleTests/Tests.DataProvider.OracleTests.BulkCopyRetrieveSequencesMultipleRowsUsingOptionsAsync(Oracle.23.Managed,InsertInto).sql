﻿BeforeExecute
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
DECLARE @:p1 Int32
SET     @:p1 = {41,42,43,44}
DECLARE @:p2 Varchar2 -- String
SET     @:p2 = {'Value','Value','Value','Value'}

INSERT INTO SEQUENCETEST (ID, VALUE) VALUES (:p1, :p2)

