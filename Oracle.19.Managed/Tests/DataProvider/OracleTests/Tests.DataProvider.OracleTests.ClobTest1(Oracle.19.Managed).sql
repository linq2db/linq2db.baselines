﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

CREATE TABLE "ClobEntity"
(
	"Id"         Int   NOT NULL,
	"ClobValue"  Clob      NULL,
	"NClobValue" NClob     NULL
)

BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @ClobValue Clob -- Object
SET     @ClobValue = 'Clob1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111'
-- value above truncated for logging
DECLARE @NClobValue NClob -- Object
SET     @NClobValue = 'NClob111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111'
-- value above truncated for logging

INSERT INTO "ClobEntity"
(
	"Id",
	"ClobValue",
	"NClobValue"
)
VALUES
(
	:Id,
	:ClobValue,
	:NClobValue
)

BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."ClobValue",
	t1."NClobValue"
FROM
	"ClobEntity" t1
WHERE
	t1."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

DROP TABLE "ClobEntity"

