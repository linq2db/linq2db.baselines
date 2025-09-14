BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TestBool" t1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"TestBool" t1
SET
	"Value" = CASE
		WHEN t1."Value" = 0 THEN 1
		WHEN t1."Value" = 1 THEN 0
		ELSE NULL
	END

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TestBool" t1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"TestBool" t1
SET
	"Id" = 1,
	"Value" = 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"TestBool" t1
FETCH NEXT 2 ROWS ONLY

