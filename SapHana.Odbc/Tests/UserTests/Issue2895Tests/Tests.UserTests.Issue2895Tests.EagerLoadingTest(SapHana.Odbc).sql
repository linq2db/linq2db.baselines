BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InternalEmail"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "InternalEmail"
(
	"Id"        Integer NOT NULL,
	"RequestId" Integer     NULL,
	"UserId"    Integer     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @RequestId  -- Int32
SET     @RequestId = 1
DECLARE @UserId  -- Int32
SET     @UserId = 1

INSERT INTO "InternalEmail"
(
	"Id",
	"RequestId",
	"UserId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Request"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Request"
(
	"Id"     Integer NOT NULL,
	"UserId" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @UserId  -- Int32
SET     @UserId = 1

INSERT INTO "Request"
(
	"Id",
	"UserId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "User"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "User"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Admin"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Admin"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Admin"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EmailAdminAssociation"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "EmailAdminAssociation"
(
	"EmailId" Integer NOT NULL,
	"AdminId" Integer NOT NULL,

	PRIMARY KEY ("EmailId", "AdminId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @EmailId  -- Int32
SET     @EmailId = 10
DECLARE @AdminId  -- Int32
SET     @AdminId = 1

INSERT INTO "EmailAdminAssociation"
(
	"EmailId",
	"AdminId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Email"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Email"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 10

INSERT INTO "Email"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EmailAttachmentAssociation"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "EmailAttachmentAssociation"
(
	"EmailId"      Integer NOT NULL,
	"AttachmentId" Integer NOT NULL,

	PRIMARY KEY ("EmailId", "AttachmentId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @EmailId  -- Int32
SET     @EmailId = 10
DECLARE @AttachmentId  -- Int32
SET     @AttachmentId = 100

INSERT INTO "EmailAttachmentAssociation"
(
	"EmailId",
	"AttachmentId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Attachment"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Attachment"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 100

INSERT INTO "Attachment"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Document"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Document"
(
	"AttachmentId" Integer       NOT NULL,
	"Position"     Integer       NOT NULL,
	"Name"         NVarChar(255)     NULL,

	PRIMARY KEY ("AttachmentId", "Position")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @AttachmentId  -- Int32
SET     @AttachmentId = 100
DECLARE @Position  -- Int32
SET     @Position = 1
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'Some Doc 1'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @AttachmentId  -- Int32
SET     @AttachmentId = 100
DECLARE @Position  -- Int32
SET     @Position = 2
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'Some Doc 2'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @AttachmentId  -- Int32
SET     @AttachmentId = 101
DECLARE @Position  -- Int32
SET     @Position = 1
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'Some Doc x'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"a_Documents"."Name"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Request" "r"
				LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
				LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
				LEFT JOIN LATERAL (
					SELECT
						"a_Email_1"."Id"
					FROM
						"EmailAdminAssociation" "a_EmailAdminAssociations"
							LEFT JOIN "Email" "a_Email" ON "a_EmailAdminAssociations"."EmailId" = "a_Email"."Id"
							LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
							LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
					WHERE
						"a_Admin"."Id" IS NOT NULL AND "a_Admin"."Id" = "a_EmailAdminAssociations"."AdminId"
					LIMIT 1
				) "t1" ON 1=1
	) "m_1"
		INNER JOIN "EmailAttachmentAssociation" "d" ON "m_1"."Id" IS NOT NULL AND "m_1"."Id" = "d"."EmailId"
		LEFT JOIN "Attachment" "a_Attachment" ON "d"."AttachmentId" = "a_Attachment"."Id"
		INNER JOIN "Document" "a_Documents" ON "a_Attachment"."Id" IS NOT NULL AND "a_Attachment"."Id" = "a_Documents"."AttachmentId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."not_null",
	"t1"."Id"
FROM
	"Request" "r"
		LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
		LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
		LEFT JOIN LATERAL (
			SELECT
				1 as "not_null",
				"a_Email_1"."Id"
			FROM
				"EmailAdminAssociation" "a_EmailAdminAssociations"
					LEFT JOIN "Email" "a_Email" ON "a_EmailAdminAssociations"."EmailId" = "a_Email"."Id"
					LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
					LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
			WHERE
				"a_Admin"."Id" IS NOT NULL AND "a_Admin"."Id" = "a_EmailAdminAssociations"."AdminId"
			LIMIT 1
		) "t1" ON 1=1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Document"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Attachment"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EmailAttachmentAssociation"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Email"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "EmailAdminAssociation"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Admin"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Request"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InternalEmail"

