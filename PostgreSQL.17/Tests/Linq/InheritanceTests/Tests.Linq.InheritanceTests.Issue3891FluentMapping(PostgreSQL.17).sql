﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Base2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Base2"
(
	"Id"           Int  NOT NULL,
	"Type"         Int  NOT NULL,
	"Name_First"   text     NULL,
	"Name_Second"  text     NULL,
	"Test_ChildId" Int  NOT NULL,

	CONSTRAINT "PK_Base2" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First Text(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second Text(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO "Base2"
(
	"Id",
	"Type",
	"Test_ChildId",
	"Name_First",
	"Name_Second"
)
VALUES
(
	:Id,
	:Type,
	:ChildId,
	:Name_First,
	:Name_Second
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Type",
	t1."Id",
	t1."Test_ChildId",
	t1."Name_First",
	t1."Name_Second"
FROM
	"Base2" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First Text(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second Text(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"Base2"
SET
	"Type" = :Type,
	"Test_ChildId" = :ChildId,
	"Name_First" = :Name_First,
	"Name_Second" = :Name_Second
WHERE
	"Base2"."Id" = :Id

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Type",
	t1."Id",
	t1."Test_ChildId",
	t1."Name_First",
	t1."Name_Second"
FROM
	"Base2" t1
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Base2"

