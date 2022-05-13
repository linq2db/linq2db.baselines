﻿BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int            NOT NULL,
	"StringConverted" VarChar2(4000)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringConverted NVarchar2(4) -- String
SET     @StringConverted = 'null'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringConverted"
)
VALUES
(
	:Id,
	:StringConverted
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StringConverted NVarchar2(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringConverted"
)
VALUES
(
	:Id,
	:StringConverted
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."StringConverted"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CreateTableTypes"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

