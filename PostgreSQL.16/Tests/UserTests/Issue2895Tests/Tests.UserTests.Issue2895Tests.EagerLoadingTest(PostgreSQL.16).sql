﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InternalEmail"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "InternalEmail"
(
	"Id"        Int NOT NULL,
	"RequestId" Int     NULL,
	"UserId"    Int     NULL,

	CONSTRAINT "PK_InternalEmail" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "InternalEmail"
(
	"Id",
	"RequestId",
	"UserId"
)
VALUES
(10,1,1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Request"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Request"
(
	"Id"     Int NOT NULL,
	"UserId" Int NOT NULL,

	CONSTRAINT "PK_Request" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Request"
(
	"Id",
	"UserId"
)
VALUES
(1,1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "User"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_User" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "User"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Admin"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Admin"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Admin" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Admin"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EmailAdminAssociation"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "EmailAdminAssociation"
(
	"EmailId" Int NOT NULL,
	"AdminId" Int NOT NULL,

	CONSTRAINT "PK_EmailAdminAssociation" PRIMARY KEY ("EmailId", "AdminId")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "EmailAdminAssociation"
(
	"EmailId",
	"AdminId"
)
VALUES
(10,1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Email"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Email"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Email" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Email"
(
	"Id"
)
VALUES
(10)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EmailAttachmentAssociation"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "EmailAttachmentAssociation"
(
	"EmailId"      Int NOT NULL,
	"AttachmentId" Int NOT NULL,

	CONSTRAINT "PK_EmailAttachmentAssociation" PRIMARY KEY ("EmailId", "AttachmentId")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "EmailAttachmentAssociation"
(
	"EmailId",
	"AttachmentId"
)
VALUES
(10,100)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Attachment"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Attachment"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Attachment" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Attachment"
(
	"Id"
)
VALUES
(100)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Document"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Document"
(
	"AttachmentId" Int  NOT NULL,
	"Position"     Int  NOT NULL,
	"Name"         text     NULL,

	CONSTRAINT "PK_Document" PRIMARY KEY ("AttachmentId", "Position")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(100,1,'Some Doc 1'),
(100,2,'Some Doc 2'),
(101,1,'Some Doc x')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	key_data_result_1."Id",
	key_data_result_1."EmailId",
	key_data_result_1."AdminId",
	key_data_result_1."Id_1",
	key_data_result_1."Id_2",
	c_1."Name"
FROM
	(
		SELECT DISTINCT
			"a_Email_1"."Id",
			detail."EmailId",
			detail."AdminId",
			key_data_result."Id" as "Id_1",
			key_data_result."Id_1" as "Id_2"
		FROM
			(
				SELECT DISTINCT
					"a_Admin"."Id",
					r."Id" as "Id_1"
				FROM
					"Request" r
						LEFT JOIN "User" "a_User" ON r."UserId" = "a_User"."Id"
						LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
			) key_data_result
				INNER JOIN "EmailAdminAssociation" detail
					LEFT JOIN "Email" "a_Email"
						LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
					ON detail."EmailId" = "a_Email"."Id"
				ON key_data_result."Id" = detail."AdminId"
				LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
	) key_data_result_1
		INNER JOIN "EmailAttachmentAssociation" detail_1
			LEFT JOIN "Attachment" "a_Attachment" ON detail_1."AttachmentId" = "a_Attachment"."Id"
		ON key_data_result_1."Id" = detail_1."EmailId"
		INNER JOIN "Document" c_1 ON "a_Attachment"."Id" = c_1."AttachmentId"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	key_data_result."Id",
	key_data_result."Id_1",
	"a_Email_1"."Id",
	detail."EmailId",
	detail."AdminId"
FROM
	(
		SELECT DISTINCT
			"a_Admin"."Id",
			r."Id" as "Id_1"
		FROM
			"Request" r
				LEFT JOIN "User" "a_User" ON r."UserId" = "a_User"."Id"
				LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
	) key_data_result
		INNER JOIN "EmailAdminAssociation" detail
			LEFT JOIN "Email" "a_Email"
				LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
			ON detail."EmailId" = "a_Email"."Id"
		ON key_data_result."Id" = detail."AdminId"
		LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	"a_Admin"."Id",
	r."Id"
FROM
	"Request" r
		LEFT JOIN "User" "a_User" ON r."UserId" = "a_User"."Id"
		LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Document"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Attachment"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EmailAttachmentAssociation"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Email"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EmailAdminAssociation"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Admin"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Request"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "InternalEmail"

