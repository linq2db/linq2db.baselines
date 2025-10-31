-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "SomeTable"
(
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	0
)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ClassProp",
	t1."Interface"
FROM
	"SomeTable" t1
FETCH NEXT 2 ROWS ONLY

