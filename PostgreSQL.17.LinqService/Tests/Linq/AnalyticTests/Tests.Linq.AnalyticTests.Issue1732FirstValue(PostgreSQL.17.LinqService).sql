﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Position"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Position"
(
	"Group" Int NOT NULL,
	"Order" Int NOT NULL,
	"Id"    Int     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Group Integer -- Int32
SET     @Group = 7
DECLARE @Order Integer -- Int32
SET     @Order = 10
DECLARE @Id Integer -- Int32
SET     @Id = 5

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	:Group,
	:Order,
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Group Integer -- Int32
SET     @Group = 7
DECLARE @Order Integer -- Int32
SET     @Order = 20
DECLARE @Id Integer -- Int32
SET     @Id = 6

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	:Group,
	:Order,
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Group Integer -- Int32
SET     @Group = 7
DECLARE @Order Integer -- Int32
SET     @Order = 30
DECLARE @Id Integer -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	:Group,
	:Order,
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Group Integer -- Int32
SET     @Group = 7
DECLARE @Order Integer -- Int32
SET     @Order = 40
DECLARE @Id Integer -- Int32
SET     @Id = NULL

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
VALUES
(
	:Group,
	:Order,
	:Id
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @group Integer -- Int32
SET     @group = 7

SELECT
	p."Id",
	FIRST_VALUE(p."Id") OVER(ORDER BY p."Order" DESC)
FROM
	"Position" p
WHERE
	p."Group" = :group

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Position"

