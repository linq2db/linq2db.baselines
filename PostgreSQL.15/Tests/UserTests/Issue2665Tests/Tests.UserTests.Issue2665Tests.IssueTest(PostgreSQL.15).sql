BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ProductTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ProductTable"
(
	"Id"   Int  NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ProductAttributeTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ProductAttributeTable"
(
	"Id"   Int  NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ProductAttributeMapping"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ProductAttributeMapping"
(
	"ProductId"          Int NOT NULL,
	"ProductAttributeId" Int NOT NULL,

	CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	pa."Id"
FROM
	"ProductAttributeMapping" pam
		INNER JOIN "ProductAttributeTable" pa ON pam."ProductAttributeId" = pa."Id"
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT
					"groupedProduct"."Id"
				FROM
					"ProductTable" "groupedProduct"
						INNER JOIN "ProductAttributeMapping" pam_1 ON "groupedProduct"."Id" = pam_1."ProductId"
				GROUP BY
					"groupedProduct"."Id"
				HAVING
					COUNT(*) = 1
			) p
		WHERE
			p."Id" >= pam."ProductId"
	)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ProductAttributeMapping"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ProductAttributeTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ProductTable"

