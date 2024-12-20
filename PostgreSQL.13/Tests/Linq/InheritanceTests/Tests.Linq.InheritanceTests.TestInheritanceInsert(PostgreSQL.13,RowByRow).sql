﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InheritanceFilter"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "InheritanceFilter"
(
	"Id"                Int NOT NULL,
	"Code"              Int NOT NULL,
	"Child1Field"       Int     NULL,
	"Child2Field"       Int     NULL,
	"Grandchild11Field" Int     NULL,
	"Grandchild12Field" Int     NULL,
	"Grandchild21Field" Int     NULL,
	"Grandchild22Field" Int     NULL,

	CONSTRAINT "PK_InheritanceFilter" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code Integer -- Int32
SET     @Code = 1
DECLARE @Child1Field Integer -- Int32
SET     @Child1Field = 11

INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child1Field"
)
VALUES
(
	:Id,
	:Code,
	:Child1Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Code Integer -- Int32
SET     @Code = 2
DECLARE @Child2Field Integer -- Int32
SET     @Child2Field = 12

INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child2Field"
)
VALUES
(
	:Id,
	:Code,
	:Child2Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Code Integer -- Int32
SET     @Code = 11
DECLARE @Child1Field Integer -- Int32
SET     @Child1Field = 23
DECLARE @Grandchild11Field Integer -- Int32
SET     @Grandchild11Field = 13

INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child1Field",
	"Grandchild11Field"
)
VALUES
(
	:Id,
	:Code,
	:Child1Field,
	:Grandchild11Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Code Integer -- Int32
SET     @Code = 12
DECLARE @Child1Field Integer -- Int32
SET     @Child1Field = 24
DECLARE @Grandchild12Field Integer -- Int32
SET     @Grandchild12Field = 14

INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child1Field",
	"Grandchild12Field"
)
VALUES
(
	:Id,
	:Code,
	:Child1Field,
	:Grandchild12Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Code Integer -- Int32
SET     @Code = 21
DECLARE @Child2Field Integer -- Int32
SET     @Child2Field = 25
DECLARE @Grandchild21Field Integer -- Int32
SET     @Grandchild21Field = 15

INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child2Field",
	"Grandchild21Field"
)
VALUES
(
	:Id,
	:Code,
	:Child2Field,
	:Grandchild21Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Code Integer -- Int32
SET     @Code = 22
DECLARE @Child2Field Integer -- Int32
SET     @Child2Field = 26
DECLARE @Grandchild22Field Integer -- Int32
SET     @Grandchild22Field = 16

INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child2Field",
	"Grandchild22Field"
)
VALUES
(
	:Id,
	:Code,
	:Child2Field,
	:Grandchild22Field
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Code",
	t1."Id",
	t1."Child1Field",
	t1."Child2Field",
	t1."Grandchild11Field",
	t1."Grandchild12Field",
	t1."Grandchild21Field",
	t1."Grandchild22Field"
FROM
	"InheritanceFilter" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "InheritanceFilter"

