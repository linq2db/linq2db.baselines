BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = TIMESTAMP '2000-01-01 00:00:00.000000'

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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = TIMESTAMP '2018-11-24 01:02:03.000000'

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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."DateTime"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

