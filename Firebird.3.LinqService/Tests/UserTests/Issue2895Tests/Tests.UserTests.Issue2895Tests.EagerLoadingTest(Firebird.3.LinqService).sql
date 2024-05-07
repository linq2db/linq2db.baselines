BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InternalEmail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InternalEmail"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InternalEmail')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InternalEmail"
			(
				"Id"        Int NOT NULL,
				"RequestId" Int,
				"UserId"    Int,

				CONSTRAINT "PK_InternalEmail" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @RequestId Integer -- Int32
SET     @RequestId = 1
DECLARE @UserId Integer -- Int32
SET     @UserId = 1

INSERT INTO "InternalEmail"
(
	"Id",
	"RequestId",
	"UserId"
)
VALUES
(
	@Id,
	@RequestId,
	@UserId
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Request"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Request"
			(
				"Id"     Int NOT NULL,
				"UserId" Int NOT NULL,

				CONSTRAINT "PK_Request" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @UserId Integer -- Int32
SET     @UserId = 1

INSERT INTO "Request"
(
	"Id",
	"UserId"
)
VALUES
(
	@Id,
	@UserId
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "User"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_User" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "User"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Admin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Admin"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Admin')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Admin"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Admin" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Admin"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAdminAssociation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmailAdminAssociation"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAdminAssociation')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EmailAdminAssociation"
			(
				"EmailId" Int NOT NULL,
				"AdminId" Int NOT NULL,

				CONSTRAINT "PK_EmailAdminAssociation" PRIMARY KEY ("EmailId", "AdminId")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @EmailId Integer -- Int32
SET     @EmailId = 10
DECLARE @AdminId Integer -- Int32
SET     @AdminId = 1

INSERT INTO "EmailAdminAssociation"
(
	"EmailId",
	"AdminId"
)
VALUES
(
	@EmailId,
	@AdminId
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Email')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Email"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Email')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Email"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Email" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "Email"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAttachmentAssociation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmailAttachmentAssociation"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAttachmentAssociation')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EmailAttachmentAssociation"
			(
				"EmailId"      Int NOT NULL,
				"AttachmentId" Int NOT NULL,

				CONSTRAINT "PK_EmailAttachmentAssociation" PRIMARY KEY ("EmailId", "AttachmentId")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @EmailId Integer -- Int32
SET     @EmailId = 10
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100

INSERT INTO "EmailAttachmentAssociation"
(
	"EmailId",
	"AttachmentId"
)
VALUES
(
	@EmailId,
	@AttachmentId
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Attachment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Attachment"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Attachment')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Attachment"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Attachment" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 100

INSERT INTO "Attachment"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Document')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Document"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Document')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Document"
			(
				"AttachmentId" Int                                    NOT NULL,
				"Position"     Int                                    NOT NULL,
				"Name"         VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Document" PRIMARY KEY ("AttachmentId", "Position")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer -- Int32
SET     @Position = 1
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc 1'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer -- Int32
SET     @Position = 2
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc 2'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @AttachmentId Integer -- Int32
SET     @AttachmentId = 101
DECLARE @Position Integer -- Int32
SET     @Position = 1
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc x'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."Id",
	"m_1"."Id_1",
	"a_Documents"."Name"
FROM
	(
		SELECT DISTINCT
			"a_Email_1"."Id",
			"t1"."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					"a_Admin"."Id"
				FROM
					"Request" "r"
						LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
						LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
			) "t1"
				INNER JOIN "EmailAdminAssociation" "d" ON "t1"."Id" IS NOT NULL AND "t1"."Id" = "d"."AdminId"
				LEFT JOIN "Email" "a_Email" ON "d"."EmailId" = "a_Email"."Id"
				LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
				LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
	) "m_1"
		INNER JOIN "EmailAttachmentAssociation" "d_1" ON "m_1"."Id" IS NOT NULL AND "m_1"."Id" = "d_1"."EmailId"
		LEFT JOIN "Attachment" "a_Attachment" ON "d_1"."AttachmentId" = "a_Attachment"."Id"
		INNER JOIN "Document" "a_Documents" ON "a_Attachment"."Id" IS NOT NULL AND "a_Attachment"."Id" = "a_Documents"."AttachmentId"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."Id",
	"a_Email_1"."Id"
FROM
	(
		SELECT DISTINCT
			"a_Admin"."Id"
		FROM
			"Request" "r"
				LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
				LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
	) "m_1"
		INNER JOIN "EmailAdminAssociation" "d" ON "m_1"."Id" IS NOT NULL AND "m_1"."Id" = "d"."AdminId"
		LEFT JOIN "Email" "a_Email" ON "d"."EmailId" = "a_Email"."Id"
		LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
		LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"a_Admin"."Id"
FROM
	"Request" "r"
		LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
		LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Document')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Document"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Attachment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Attachment"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAttachmentAssociation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmailAttachmentAssociation"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Email')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Email"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAdminAssociation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmailAdminAssociation"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Admin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Admin"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Request"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InternalEmail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InternalEmail"';
END

