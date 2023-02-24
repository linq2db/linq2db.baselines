BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "GuidTable"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "GuidTable"
(
	"Id"             Int  NOT NULL,
	"Column"         uuid NOT NULL,
	"ColumnNullable" uuid     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,NULL),
(2,'a948600d-de21-4f74-8ac2-9516b287076e'::uuid,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Column_1 Uuid -- Guid
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @ColumnNullable Uuid -- Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"GuidTable" r
WHERE
	r."Column" = :Column_1 AND r."ColumnNullable" = :ColumnNullable

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."Column",
	r."ColumnNullable"
FROM
	"GuidTable" r
WHERE
	r."Column" = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid AND
	r."ColumnNullable" = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Uuid -- Guid
SET     @Column_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid
DECLARE @ColumnNullable Uuid -- Guid
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column_1,
	:ColumnNullable
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Uuid -- Guid
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'::uuid
DECLARE @ColumnNullable Uuid -- Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	:Id,
	:Column_1,
	:ColumnNullable
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"GuidTable" t1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'::uuid,NULL),
(2,'a948600d-de21-4f74-8ac2-9516b287076e'::uuid,'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'::uuid)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"GuidTable" t1

BeforeExecute
INSERT BULK "GuidTable"(Id, Column, ColumnNullable)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Column",
	t1."ColumnNullable"
FROM
	"GuidTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "GuidTable"

