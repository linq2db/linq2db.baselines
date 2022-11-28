﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Value'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value_1
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Value'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value_1
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Value'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value_1
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Value_1 Varchar2(5) -- String
SET     @Value_1 = 'Value'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value_1
)

