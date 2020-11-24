BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Entity1711"
(
	"Id" Number(19) NOT NULL,

	CONSTRAINT "PK_Entity1711" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Relationship1711"
(
	"EntityId" Number(19) NOT NULL,
	"Deleted"  Char(1)    NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t."Id"
FROM
	"Entity1711" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" t1
		WHERE
			t."Id" = t1."EntityId"
	)

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Relationship1711"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "Entity1711"

