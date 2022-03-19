BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "GuidTable"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE IF NOT EXISTS "GuidTable"
(
	"ColumnNullable" uuid     NULL,
	"Column"         uuid NOT NULL,
	"Id"             Int  NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',1),
('bd3973a5-4323-4dd8-9f4f-df9f93e2a627','a948600d-de21-4f74-8ac2-9516b287076e',2)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Column_1 Uuid -- Guid
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Uuid -- Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"GuidTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	r."ColumnNullable",
	r."Column",
	r."Id"
FROM
	"GuidTable" r
WHERE
	r."Column" = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	r."ColumnNullable" = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @ColumnNullable Uuid -- Guid
SET     @ColumnNullable = NULL
DECLARE @Column_1 Uuid -- Guid
SET     @Column_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	:ColumnNullable,
	:Column_1,
	:Id
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @ColumnNullable Uuid -- Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @Column_1 Uuid -- Guid
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(
	:ColumnNullable,
	:Column_1,
	:Id
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "GuidTable"
(
	"ColumnNullable",
	"Column",
	"Id"
)
VALUES
(NULL,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',1),
('bd3973a5-4323-4dd8-9f4f-df9f93e2a627','a948600d-de21-4f74-8ac2-9516b287076e',2)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"GuidTable" t1

BeforeExecute
INSERT BULK "GuidTable"(ColumnNullable, Column, Id)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t1."ColumnNullable",
	t1."Column",
	t1."Id"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "GuidTable"

