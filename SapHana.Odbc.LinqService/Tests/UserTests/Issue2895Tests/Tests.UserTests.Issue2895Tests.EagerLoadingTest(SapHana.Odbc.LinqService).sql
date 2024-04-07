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
-- SapHana.Odbc SapHanaOdbc

SELECT
	"key_data_result_1"."Id",
	"key_data_result_1"."EmailId",
	"key_data_result_1"."AdminId",
	"key_data_result_1"."Id_1",
	"key_data_result_1"."Id_1_1",
	"__c"."Name"
FROM
	(
		SELECT DISTINCT
			"a_Email_1"."Id",
			"detail"."EmailId",
			"detail"."AdminId",
			"key_data_result"."Id" as "Id_1",
			"key_data_result"."Id_1" as "Id_1_1"
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
				INNER JOIN ("EmailAdminAssociation" "detail"
					LEFT JOIN ("Email" "a_Email"
						LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id")
					ON "detail"."EmailId" = "a_Email"."Id")
				ON "key_data_result"."Id" = "detail"."AdminId"
				LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
	) "key_data_result_1"
		INNER JOIN ("EmailAttachmentAssociation" "detail_1"
			LEFT JOIN "Attachment" "a_Attachment" ON "detail_1"."AttachmentId" = "a_Attachment"."Id")
		ON "key_data_result_1"."Id" = "detail_1"."EmailId"
		INNER JOIN "Document" "__c" ON "a_Attachment"."Id" = "__c"."AttachmentId"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
		INNER JOIN ("EmailAdminAssociation" "detail"
			LEFT JOIN ("Email" "a_Email"
				LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id")
			ON "detail"."EmailId" = "a_Email"."Id")
		ON "key_data_result"."Id" = "detail"."AdminId"
		LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"a_Admin"."Id",
	"r"."Id"
FROM
	"Request" "r"
		LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
		LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"

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

