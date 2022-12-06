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
DECLARE @Position_1 Integer(4) -- Int32
SET     @Position_1 = 1
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
	@Position_1,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 100
DECLARE @Position_1 Integer(4) -- Int32
SET     @Position_1 = 2
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
	@Position_1,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 101
DECLARE @Position_1 Integer(4) -- Int32
SET     @Position_1 = 1
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
	@Position_1,
	@Name
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	key_data_result_1.Id,
	key_data_result_1.EmailId,
	key_data_result_1.AdminId,
	key_data_result_1.Id_1,
	key_data_result_1.Id_2,
	c_1.Name
FROM
	(
		SELECT DISTINCT
			a_Email_1.Id,
			detail.EmailId,
			detail.AdminId,
			key_data_result.Id as Id_1,
			key_data_result.Id_1 as Id_2
		FROM
			(
				SELECT DISTINCT
					a_Admin.Id,
					r.Id as Id_1
				FROM
					Request r
						LEFT JOIN "User" a_User ON r.UserId = a_User.Id
						LEFT JOIN "Admin" a_Admin ON a_User.Id = a_Admin.Id
			) key_data_result
				INNER JOIN EmailAdminAssociation detail
					LEFT JOIN Email a_Email
						LEFT JOIN InternalEmail a_InternalEmail ON a_Email.Id = a_InternalEmail.Id
					ON detail.EmailId = a_Email.Id
				ON key_data_result.Id = detail.AdminId
				LEFT JOIN Email a_Email_1 ON a_InternalEmail.Id = a_Email_1.Id
	) key_data_result_1
		INNER JOIN EmailAttachmentAssociation detail_1
			LEFT JOIN Attachment a_Attachment ON detail_1.AttachmentId = a_Attachment.Id
		ON key_data_result_1.Id = detail_1.EmailId
		INNER JOIN Document c_1 ON a_Attachment.Id = c_1.AttachmentId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	key_data_result.Id,
	key_data_result.Id_1,
	a_Email_1.Id,
	detail.EmailId,
	detail.AdminId
FROM
	(
		SELECT DISTINCT
			a_Admin.Id,
			r.Id as Id_1
		FROM
			Request r
				LEFT JOIN "User" a_User ON r.UserId = a_User.Id
				LEFT JOIN "Admin" a_Admin ON a_User.Id = a_Admin.Id
	) key_data_result
		INNER JOIN EmailAdminAssociation detail
			LEFT JOIN Email a_Email
				LEFT JOIN InternalEmail a_InternalEmail ON a_Email.Id = a_InternalEmail.Id
			ON detail.EmailId = a_Email.Id
		ON key_data_result.Id = detail.AdminId
		LEFT JOIN Email a_Email_1 ON a_InternalEmail.Id = a_Email_1.Id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	a_Admin.Id,
	r.Id
FROM
	Request r
		LEFT JOIN "User" a_User ON r.UserId = a_User.Id
		LEFT JOIN "Admin" a_Admin ON a_User.Id = a_Admin.Id

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

