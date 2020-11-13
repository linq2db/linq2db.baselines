BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "CreateTableTypes"
(
	"Id"       Int       NOT NULL,
	"DateTime" timestamp NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = TO_TIMESTAMP('2000-01-01 00:00:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	:Id,
	:DateTime
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = TO_TIMESTAMP('2018-11-24 01:02:03.000000', 'YYYY-MM-DD HH24:MI:SS.FF6')

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	:Id,
	:DateTime
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."DateTime"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "CreateTableTypes"

