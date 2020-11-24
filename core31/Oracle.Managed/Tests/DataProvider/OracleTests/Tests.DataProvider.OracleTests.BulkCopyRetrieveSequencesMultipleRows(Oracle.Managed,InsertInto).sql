BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]
DECLARE @:p2 Varchar2 -- String
SET     @:p2 = System.Object[]

INSERT INTO SEQUENCETEST (ID, VALUE) VALUES (:p1, :p2)

