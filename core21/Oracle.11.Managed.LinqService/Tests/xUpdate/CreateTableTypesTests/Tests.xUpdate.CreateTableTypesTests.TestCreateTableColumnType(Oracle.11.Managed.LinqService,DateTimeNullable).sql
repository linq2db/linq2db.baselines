BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CreateTableTypes
(
	Id               Int       NOT NULL,
	DateTimeNullable timestamp     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	:Id,
	:DateTimeNullable
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = TO_TIMESTAMP('2018-11-25 01:02:03.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	:Id,
	:DateTimeNullable
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.Id,
	t1.DateTimeNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE CreateTableTypes

