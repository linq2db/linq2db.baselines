﻿BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "TestBool"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	0
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

UPDATE
	"TestBool" t1
SET
	"Id" = 1,
	"Value" = CASE
		WHEN t1."Value" = 0 THEN 1
		WHEN t1."Value" = 1 THEN 0
		ELSE NULL
	END

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

UPDATE
	"TestBool" t1
SET
	"Id" = 1,
	"Value" = 0

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestBool" t1
WHERE
	ROWNUM <= 2

