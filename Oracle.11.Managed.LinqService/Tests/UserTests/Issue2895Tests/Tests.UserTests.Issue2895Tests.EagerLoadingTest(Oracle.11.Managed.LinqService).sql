BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InternalEmail"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "InternalEmail"
		(
			"Id"        Int NOT NULL,
			"RequestId" Int     NULL,
			"UserId"    Int     NULL,

			CONSTRAINT "PK_InternalEmail" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 10
DECLARE @RequestId Int32
SET     @RequestId = 1
DECLARE @UserId Int32
SET     @UserId = 1

INSERT INTO "InternalEmail"
(
	"Id",
	"RequestId",
	"UserId"
)
VALUES
(
	:Id,
	:RequestId,
	:UserId
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Request"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Request"
		(
			"Id"     Int NOT NULL,
			"UserId" Int NOT NULL,

			CONSTRAINT "PK_Request" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @UserId Int32
SET     @UserId = 1

INSERT INTO "Request"
(
	"Id",
	"UserId"
)
VALUES
(
	:Id,
	:UserId
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "User"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_User" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "User"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Admin"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Admin"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Admin" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "Admin"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EmailAdminAssociation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "EmailAdminAssociation"
		(
			"EmailId" Int NOT NULL,
			"AdminId" Int NOT NULL,

			CONSTRAINT "PK_EmailAdminAssociation" PRIMARY KEY ("EmailId", "AdminId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @EmailId Int32
SET     @EmailId = 10
DECLARE @AdminId Int32
SET     @AdminId = 1

INSERT INTO "EmailAdminAssociation"
(
	"EmailId",
	"AdminId"
)
VALUES
(
	:EmailId,
	:AdminId
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Email"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Email"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Email" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 10

INSERT INTO "Email"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EmailAttachmentAssociation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "EmailAttachmentAssociation"
		(
			"EmailId"      Int NOT NULL,
			"AttachmentId" Int NOT NULL,

			CONSTRAINT "PK_EmailAttachmentAssociation" PRIMARY KEY ("EmailId", "AttachmentId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @EmailId Int32
SET     @EmailId = 10
DECLARE @AttachmentId Int32
SET     @AttachmentId = 100

INSERT INTO "EmailAttachmentAssociation"
(
	"EmailId",
	"AttachmentId"
)
VALUES
(
	:EmailId,
	:AttachmentId
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Attachment"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Attachment"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Attachment" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 100

INSERT INTO "Attachment"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Document"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Document"
		(
			"AttachmentId" Int          NOT NULL,
			"Position"     Int          NOT NULL,
			"Name"         VarChar(255)     NULL,

			CONSTRAINT "PK_Document" PRIMARY KEY ("AttachmentId", "Position")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @AttachmentId Int32
SET     @AttachmentId = 100
DECLARE @Position Int32
SET     @Position = 1
DECLARE @Name Varchar2(10) -- String
SET     @Name = 'Some Doc 1'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	:AttachmentId,
	:Position,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @AttachmentId Int32
SET     @AttachmentId = 100
DECLARE @Position Int32
SET     @Position = 2
DECLARE @Name Varchar2(10) -- String
SET     @Name = 'Some Doc 2'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	:AttachmentId,
	:Position,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @AttachmentId Int32
SET     @AttachmentId = 101
DECLARE @Position Int32
SET     @Position = 1
DECLARE @Name Varchar2(10) -- String
SET     @Name = 'Some Doc x'

INSERT INTO "Document"
(
	"AttachmentId",
	"Position",
	"Name"
)
VALUES
(
	:AttachmentId,
	:Position,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."Id",
	m_1."Id_1",
	a_Documents."Name"
FROM
	(
		SELECT DISTINCT
			a_Email_1."Id",
			t1."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					a_Admin."Id"
				FROM
					"Request" r
						LEFT JOIN "User" a_User ON r."UserId" = a_User."Id"
						LEFT JOIN "Admin" a_Admin ON a_User."Id" = a_Admin."Id"
			) t1
				INNER JOIN "EmailAdminAssociation" d ON t1."Id" IS NOT NULL AND t1."Id" = d."AdminId"
				LEFT JOIN "Email" a_Email ON d."EmailId" = a_Email."Id"
				LEFT JOIN "InternalEmail" a_InternalEmail ON a_Email."Id" = a_InternalEmail."Id"
				LEFT JOIN "Email" a_Email_1 ON a_InternalEmail."Id" = a_Email_1."Id"
	) m_1
		INNER JOIN "EmailAttachmentAssociation" d_1 ON m_1."Id" IS NOT NULL AND m_1."Id" = d_1."EmailId"
		LEFT JOIN "Attachment" a_Attachment ON d_1."AttachmentId" = a_Attachment."Id"
		INNER JOIN "Document" a_Documents ON a_Attachment."Id" IS NOT NULL AND a_Attachment."Id" = a_Documents."AttachmentId"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."Id",
	a_Email_1."Id"
FROM
	(
		SELECT DISTINCT
			a_Admin."Id"
		FROM
			"Request" r
				LEFT JOIN "User" a_User ON r."UserId" = a_User."Id"
				LEFT JOIN "Admin" a_Admin ON a_User."Id" = a_Admin."Id"
	) m_1
		INNER JOIN "EmailAdminAssociation" d ON m_1."Id" IS NOT NULL AND m_1."Id" = d."AdminId"
		LEFT JOIN "Email" a_Email ON d."EmailId" = a_Email."Id"
		LEFT JOIN "InternalEmail" a_InternalEmail ON a_Email."Id" = a_InternalEmail."Id"
		LEFT JOIN "Email" a_Email_1 ON a_InternalEmail."Id" = a_Email_1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_Admin."Id"
FROM
	"Request" r
		LEFT JOIN "User" a_User ON r."UserId" = a_User."Id"
		LEFT JOIN "Admin" a_Admin ON a_User."Id" = a_Admin."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Document"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Attachment"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EmailAttachmentAssociation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Email"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "EmailAdminAssociation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Admin"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Request"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InternalEmail"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

