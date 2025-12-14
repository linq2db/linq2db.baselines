-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Value'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value
)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Value'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value
)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Value'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value
)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Value'

INSERT INTO SEQUENCETEST
(
	ID,
	VALUE
)
VALUES
(
	SEQUENCETESTSEQ.nextval,
	:Value
)

