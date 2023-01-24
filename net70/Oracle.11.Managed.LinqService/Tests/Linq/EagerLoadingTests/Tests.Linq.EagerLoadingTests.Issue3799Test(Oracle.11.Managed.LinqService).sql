BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3799Item"';
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
		CREATE TABLE "Test3799Item"
		(
			"Id"       Int          NOT NULL,
			"ParentId" Int              NULL,
			"Name"     VarChar(255) NOT NULL,

			CONSTRAINT "PK_Test3799Item" PRIMARY KEY ("Id")
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
DECLARE @ParentId Int32
SET     @ParentId = NULL
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'root'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @ParentId Int32
SET     @ParentId = 1
DECLARE @Name Varchar2(7) -- String
SET     @Name = 'child 1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 3
DECLARE @ParentId Int32
SET     @ParentId = 2
DECLARE @Name Varchar2(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 4
DECLARE @ParentId Int32
SET     @ParentId = 2
DECLARE @Name Varchar2(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 5
DECLARE @ParentId Int32
SET     @ParentId = 1
DECLARE @Name Varchar2(7) -- String
SET     @Name = 'child 2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 6
DECLARE @ParentId Int32
SET     @ParentId = 5
DECLARE @Name Varchar2(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 7
DECLARE @ParentId Int32
SET     @ParentId = 5
DECLARE @Name Varchar2(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	key_data_result."Id",
	key_data_result."Id_1",
	detail_1."Name"
FROM
	(
		SELECT DISTINCT
			detail."Id",
			item_1."Id" as "Id_1"
		FROM
			"Test3799Item" item_1
				INNER JOIN "Test3799Item" detail ON item_1."Id" = detail."ParentId"
	) key_data_result
		INNER JOIN "Test3799Item" detail_1 ON key_data_result."Id" = detail_1."ParentId"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	item_1."Id",
	detail."Name",
	detail."Id"
FROM
	"Test3799Item" item_1
		INNER JOIN "Test3799Item" detail ON item_1."Id" = detail."ParentId"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	item_1."Name",
	item_1."Id"
FROM
	"Test3799Item" item_1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3799Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

