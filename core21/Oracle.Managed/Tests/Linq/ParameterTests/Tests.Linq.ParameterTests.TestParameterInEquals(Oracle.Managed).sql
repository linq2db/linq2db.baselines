BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TestEqualsTable1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TestEqualsTable2"
(
	"Id" Int NOT NULL,
	FK   Int     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."Id"
FROM
	"TestEqualsTable1" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TestEqualsTable2" t2
		WHERE
			t1."Id" = t2.FK AND t2."Id" IS NULL
	)

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TestEqualsTable2"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TestEqualsTable1"

