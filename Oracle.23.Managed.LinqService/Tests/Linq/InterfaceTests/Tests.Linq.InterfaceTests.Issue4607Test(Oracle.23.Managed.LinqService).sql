BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

INSERT INTO "SomeTable"
(
	"Id",
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	1,
	0
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."ClassProp",
	t1."Interface"
FROM
	"SomeTable" t1
FETCH NEXT 2 ROWS ONLY

