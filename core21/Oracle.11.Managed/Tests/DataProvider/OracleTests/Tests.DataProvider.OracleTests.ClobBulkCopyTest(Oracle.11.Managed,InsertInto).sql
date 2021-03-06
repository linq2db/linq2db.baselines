﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "ClobEntity"
(
	"Id"         Int   NOT NULL,
	"ClobValue"  Clob      NULL,
	"NClobValue" NClob     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @:p1 Int32
SET     @:p1 = System.Object[]
DECLARE @:p2 Clob -- Object
SET     @:p2 = System.Object[]
DECLARE @:p3 NClob -- Object
SET     @:p3 = System.Object[]

INSERT INTO "ClobEntity" ("Id", "ClobValue", "NClobValue") VALUES (:p1, :p2, :p3)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."ClobValue",
	t1."NClobValue"
FROM
	"ClobEntity" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ClobEntity"

