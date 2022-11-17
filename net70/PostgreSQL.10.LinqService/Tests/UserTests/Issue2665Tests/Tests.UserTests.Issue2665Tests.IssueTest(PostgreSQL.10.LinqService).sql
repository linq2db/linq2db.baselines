BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ProductTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "ProductTable"
(
	"Id"   Int  NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_ProductTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ProductAttributeTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "ProductAttributeTable"
(
	"Id"   Int  NOT NULL,
	"Name" text NOT NULL,

	CONSTRAINT "PK_ProductAttributeTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ProductAttributeMapping"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "ProductAttributeMapping"
(
	"ProductId"          Int NOT NULL,
	"ProductAttributeId" Int NOT NULL,

	CONSTRAINT "PK_ProductAttributeMapping" PRIMARY KEY ("ProductId", "ProductAttributeId")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ProductAttributeMapping"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ProductAttributeTable"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ProductTable"

