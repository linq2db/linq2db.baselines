﻿BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int NOT NULL,
	"IntEnumNullable" Int     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnumNullable Int32
SET     @IntEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	:Id,
	:IntEnumNullable
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnumNullable Int32
SET     @IntEnumNullable = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	:Id,
	:IntEnumNullable
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."IntEnumNullable"
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

