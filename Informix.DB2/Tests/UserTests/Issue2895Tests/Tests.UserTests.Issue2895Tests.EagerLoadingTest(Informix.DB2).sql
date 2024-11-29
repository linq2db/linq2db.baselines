BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS InternalEmail

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS InternalEmail
(
	Id        Int NOT NULL,
	RequestId Int     NULL,
	UserId    Int     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @RequestId Integer(4) -- Int32
SET     @RequestId = 1
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 1

INSERT INTO InternalEmail
(
	Id,
	RequestId,
	UserId
)
VALUES
(
	@Id,
	@RequestId,
	@UserId
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Request

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Request
(
	Id     Int NOT NULL,
	UserId Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @UserId Integer(4) -- Int32
SET     @UserId = 1

INSERT INTO Request
(
	Id,
	UserId
)
VALUES
(
	@Id,
	@UserId
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "User"
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "User"
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Admin"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Admin"
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Admin"
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS EmailAdminAssociation

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS EmailAdminAssociation
(
	EmailId Int NOT NULL,
	AdminId Int NOT NULL,

	PRIMARY KEY (EmailId, AdminId)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @EmailId Integer(4) -- Int32
SET     @EmailId = 10
DECLARE @AdminId Integer(4) -- Int32
SET     @AdminId = 1

INSERT INTO EmailAdminAssociation
(
	EmailId,
	AdminId
)
VALUES
(
	@EmailId,
	@AdminId
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Email

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Email
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10

INSERT INTO Email
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS EmailAttachmentAssociation

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS EmailAttachmentAssociation
(
	EmailId      Int NOT NULL,
	AttachmentId Int NOT NULL,

	PRIMARY KEY (EmailId, AttachmentId)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @EmailId Integer(4) -- Int32
SET     @EmailId = 10
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 100

INSERT INTO EmailAttachmentAssociation
(
	EmailId,
	AttachmentId
)
VALUES
(
	@EmailId,
	@AttachmentId
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Attachment

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Attachment
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 100

INSERT INTO Attachment
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Document

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Document
(
	AttachmentId Int           NOT NULL,
	"Position"   Int           NOT NULL,
	Name         NVarChar(255)     NULL,

	PRIMARY KEY (AttachmentId, "Position")
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer(4) -- Int32
SET     @Position = 1
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc 1'

INSERT INTO Document
(
	AttachmentId,
	"Position",
	Name
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer(4) -- Int32
SET     @Position = 2
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc 2'

INSERT INTO Document
(
	AttachmentId,
	"Position",
	Name
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 101
DECLARE @Position Integer(4) -- Int32
SET     @Position = 1
DECLARE @Name VarChar(10) -- String
SET     @Name = 'Some Doc x'

INSERT INTO Document
(
	AttachmentId,
	"Position",
	Name
)
VALUES
(
	@AttachmentId,
	@Position,
	@Name
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	a_Documents.Name
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			Request r
				LEFT JOIN "User" a_User ON r.UserId = a_User.Id
				LEFT JOIN "Admin" a_Admin ON a_User.Id = a_Admin.Id
				LEFT JOIN (
					SELECT
						a_Email_1.Id,
						ROW_NUMBER() OVER (PARTITION BY a_EmailAdminAssociations.AdminId ORDER BY a_EmailAdminAssociations.AdminId) as rn,
						a_EmailAdminAssociations.AdminId
					FROM
						EmailAdminAssociation a_EmailAdminAssociations
							LEFT JOIN Email a_Email ON a_EmailAdminAssociations.EmailId = a_Email.Id
							LEFT JOIN InternalEmail a_InternalEmail ON a_Email.Id = a_InternalEmail.Id
							LEFT JOIN Email a_Email_1 ON a_InternalEmail.Id = a_Email_1.Id
				) t1 ON a_Admin.Id = t1.AdminId AND t1.rn <= 1
	) m_1
		INNER JOIN EmailAttachmentAssociation d ON m_1.Id = d.EmailId
		LEFT JOIN Attachment a_Attachment ON d.AttachmentId = a_Attachment.Id
		INNER JOIN Document a_Documents ON a_Attachment.Id = a_Documents.AttachmentId

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.not_null,
	t1.Id
FROM
	Request r
		LEFT JOIN "User" a_User ON r.UserId = a_User.Id
		LEFT JOIN "Admin" a_Admin ON a_User.Id = a_Admin.Id
		LEFT JOIN (
			SELECT
				1 as not_null,
				a_Email_1.Id,
				ROW_NUMBER() OVER (PARTITION BY a_EmailAdminAssociations.AdminId ORDER BY a_EmailAdminAssociations.AdminId) as rn,
				a_EmailAdminAssociations.AdminId
			FROM
				EmailAdminAssociation a_EmailAdminAssociations
					LEFT JOIN Email a_Email ON a_EmailAdminAssociations.EmailId = a_Email.Id
					LEFT JOIN InternalEmail a_InternalEmail ON a_Email.Id = a_InternalEmail.Id
					LEFT JOIN Email a_Email_1 ON a_InternalEmail.Id = a_Email_1.Id
		) t1 ON a_Admin.Id = t1.AdminId AND t1.rn <= 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Document

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Attachment

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS EmailAttachmentAssociation

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Email

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS EmailAdminAssociation

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Admin"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Request

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS InternalEmail

