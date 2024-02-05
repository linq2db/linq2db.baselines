BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InternalEmail"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InternalEmail"
		(
			"Id"        Int NOT NULL,
			"RequestId" Int     NULL,
			"UserId"    Int     NULL,

			CONSTRAINT "PK_InternalEmail" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 10
DECLARE @RequestId Integer(4) -- Int32
SET     @RequestId = 1
DECLARE @UserId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Request"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Request"
		(
			"Id"     Int NOT NULL,
			"UserId" Int NOT NULL,

			CONSTRAINT "PK_Request" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @UserId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "User"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_User" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Admin"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Admin"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Admin" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "EmailAdminAssociation"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "EmailAdminAssociation"
		(
			"EmailId" Int NOT NULL,
			"AdminId" Int NOT NULL,

			CONSTRAINT "PK_EmailAdminAssociation" PRIMARY KEY ("EmailId", "AdminId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @EmailId Integer(4) -- Int32
SET     @EmailId = 10
DECLARE @AdminId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Email"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Email"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Email" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "EmailAttachmentAssociation"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "EmailAttachmentAssociation"
		(
			"EmailId"      Int NOT NULL,
			"AttachmentId" Int NOT NULL,

			CONSTRAINT "PK_EmailAttachmentAssociation" PRIMARY KEY ("EmailId", "AttachmentId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @EmailId Integer(4) -- Int32
SET     @EmailId = 10
DECLARE @AttachmentId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Attachment"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Attachment"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Attachment" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Document"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Document"
		(
			"AttachmentId" Int           NOT NULL,
			"Position"     Int           NOT NULL,
			"Name"         NVarChar(255)     NULL,

			CONSTRAINT "PK_Document" PRIMARY KEY ("AttachmentId", "Position")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 100
DECLARE @Position Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @AttachmentId Integer(4) -- Int32
SET     @AttachmentId = 101
DECLARE @Position Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

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
		INNER JOIN "Document" "__c" ON "a_Attachment"."Id" = "__c"."AttachmentId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Admin"."Id",
	"r"."Id"
FROM
	"Request" "r"
		LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
		LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Document"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Attachment"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "EmailAttachmentAssociation"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Email"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "EmailAdminAssociation"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Admin"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Request"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InternalEmail"';
END

