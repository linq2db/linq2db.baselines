BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "MultipleRowsTable"
(
	"Id",
	"DecimalValue1",
	"DecimalValue2"
)
VALUES
(1,NULL,1::decimal(1)),
(2,1.5::decimal(2, 1),-2.6::decimal(2, 1))

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."DecimalValue1",
	t1."DecimalValue2"
FROM
	"MultipleRowsTable" t1
ORDER BY
	t1."Id"

