BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "ProductTable"
(
	"Id"   Int          NOT NULL,
	"Name" VarChar(255) NOT NULL,

	CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "ProductAttributeTable"
(
	"Id"   Int          NOT NULL,
	"Name" VarChar(255) NOT NULL,

	CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "ProductAttributeMapping"
(
	"ProductId"          Int NOT NULL,
	"ProductAttributeId" Int NOT NULL,

	CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	pa."Id"
FROM
	"ProductAttributeMapping" pam
		INNER JOIN "ProductAttributeTable" pa ON pam."ProductAttributeId" = pa."Id"
WHERE
	EXISTS(
		SELECT
			p."Id"
		FROM
			"ProductTable" p
				INNER JOIN "ProductAttributeMapping" pam_1 ON p."Id" = pam_1."ProductId"
		WHERE
			p."Id" >= pam."ProductId"
		GROUP BY
			p."Id"
		HAVING
			Count(*) = 1
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ProductAttributeMapping"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ProductAttributeTable"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "ProductTable"

