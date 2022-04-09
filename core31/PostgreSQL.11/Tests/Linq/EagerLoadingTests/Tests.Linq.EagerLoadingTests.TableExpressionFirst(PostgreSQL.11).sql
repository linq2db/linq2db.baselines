﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "UserIssue3128"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_UserIssue3128" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "UserDetailsIssue3128"
(
	"UserId" Int NOT NULL,
	"Age"    Int NOT NULL,

	CONSTRAINT "PK_UserDetailsIssue3128" PRIMARY KEY ("UserId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	:Id
)
RETURNING 
	"Id"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @UserId Integer -- Int32
SET     @UserId = 10
DECLARE @Age Integer -- Int32
SET     @Age = 18

INSERT INTO "UserDetailsIssue3128"
(
	"UserId",
	"Age"
)
VALUES
(
	:UserId,
	:Age
)
RETURNING 
	"UserId"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	"a_Details"."UserId",
	"a_Details"."Age"
FROM
	"UserIssue3128" t1
		LEFT JOIN "UserDetailsIssue3128" "a_Details" ON t1."Id" = "a_Details"."UserId"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UserDetailsIssue3128"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "UserIssue3128"

