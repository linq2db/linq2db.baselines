BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "T1351Model"
(
	ID             Int       NOT NULL,
	"TestField"    Number(3) NOT NULL,
	"TestNullable" Number(3)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	t1."TestField" = 0

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."TestField",
	t1."TestNullable"
FROM
	"T1351Model" t1
WHERE
	(t1."TestNullable" <> 1 OR t1."TestNullable" IS NULL)

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "T1351Model"

