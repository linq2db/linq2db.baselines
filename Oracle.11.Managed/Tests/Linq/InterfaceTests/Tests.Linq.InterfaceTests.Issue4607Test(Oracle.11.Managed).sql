-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

SELECT
	t1."ClassProp",
	t1."Interface"
FROM
	"SomeTable" t1
WHERE
	ROWNUM <= 2

