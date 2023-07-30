BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InternalEmail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InternalEmail"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "InternalEmail"
(
	"Id",
	"RequestId",
	"UserId"
)
SELECT 10,1,1 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Request"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Request"
(
	"Id",
	"UserId"
)
SELECT 1,1 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "User"
(
	"Id"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Admin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Admin"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Admin"
(
	"Id"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAdminAssociation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmailAdminAssociation"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "EmailAdminAssociation"
(
	"EmailId",
	"AdminId"
)
SELECT 10,1 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Email')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Email"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Email"
(
	"Id"
)
SELECT 10 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAttachmentAssociation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmailAttachmentAssociation"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "EmailAttachmentAssociation"
(
	"EmailId",
	"AttachmentId"
)
SELECT 10,100 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Attachment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Attachment"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Attachment"
(
	"Id"
)
SELECT 100 FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Document')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Document"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
SELECT 100,1,CAST('Some Doc 1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 100,2,'Some Doc 2' FROM rdb$database UNION ALL
SELECT 101,1,'Some Doc x' FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird

SELECT
	"key_data_result_1"."Id",
	"key_data_result_1"."EmailId",
	"key_data_result_1"."AdminId",
	"key_data_result_1"."Id_1",
	"key_data_result_1"."Id_2",
	"c_1"."Name"
FROM
	(
		SELECT DISTINCT
			"a_Email_1"."Id",
			"detail"."EmailId",
			"detail"."AdminId",
			"key_data_result"."Id" as "Id_1",
			"key_data_result"."Id_1" as "Id_2"
		FROM
			(
				SELECT DISTINCT
					"a_Admin"."Id",
					"r"."Id" as "Id_1"
				FROM
					"Request" "r"
						LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
						LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
			) "key_data_result"
				INNER JOIN "EmailAdminAssociation" "detail"
					LEFT JOIN "Email" "a_Email"
						LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
					ON "detail"."EmailId" = "a_Email"."Id"
				ON "key_data_result"."Id" = "detail"."AdminId"
				LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
	) "key_data_result_1"
		INNER JOIN "EmailAttachmentAssociation" "detail_1"
			LEFT JOIN "Attachment" "a_Attachment" ON "detail_1"."AttachmentId" = "a_Attachment"."Id"
		ON "key_data_result_1"."Id" = "detail_1"."EmailId"
		INNER JOIN "Document" "c_1" ON "a_Attachment"."Id" = "c_1"."AttachmentId"

BeforeExecute
-- Firebird

SELECT
	"key_data_result"."Id",
	"key_data_result"."Id_1",
	"a_Email_1"."Id",
	"detail"."EmailId",
	"detail"."AdminId"
FROM
	(
		SELECT DISTINCT
			"a_Admin"."Id",
			"r"."Id" as "Id_1"
		FROM
			"Request" "r"
				LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
				LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
	) "key_data_result"
		INNER JOIN "EmailAdminAssociation" "detail"
			LEFT JOIN "Email" "a_Email"
				LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
			ON "detail"."EmailId" = "a_Email"."Id"
		ON "key_data_result"."Id" = "detail"."AdminId"
		LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird

SELECT
	"a_Admin"."Id",
	"r"."Id"
FROM
	"Request" "r"
		LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
		LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Document')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Document"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Attachment')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Attachment"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAttachmentAssociation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmailAttachmentAssociation"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Email')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Email"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EmailAdminAssociation')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EmailAdminAssociation"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Admin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Admin"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'User')) THEN
		EXECUTE STATEMENT 'DROP TABLE "User"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Request')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Request"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InternalEmail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InternalEmail"';
END

