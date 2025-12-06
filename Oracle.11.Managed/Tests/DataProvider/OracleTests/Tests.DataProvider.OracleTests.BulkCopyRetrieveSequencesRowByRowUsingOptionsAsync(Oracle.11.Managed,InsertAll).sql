-- Oracle.11.Managed Oracle11

DELETE FROM
	SEQUENCETEST t1
WHERE
	t1.VALUE = 'SeqValue'

-- Oracle.11.Managed Oracle11

SELECT SEQUENCETESTSEQ.nextval ID from DUAL connect by level <= 4

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

