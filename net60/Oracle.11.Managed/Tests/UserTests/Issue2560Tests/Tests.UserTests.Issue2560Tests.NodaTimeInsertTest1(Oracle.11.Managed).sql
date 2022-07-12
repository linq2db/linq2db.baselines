BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "DataClass"
(
	"Id"    Int  NOT NULL,
	"Value" date NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 0
DECLARE @Value_1 TimeStamp -- DateTime
SET     @Value_1 = TIMESTAMP '2020-02-29 17:54:55.000000'

INSERT INTO "DataClass"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"DataClass" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "DataClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

