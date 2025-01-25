BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3664"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Test3664"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Test3664" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "Test3664"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3664Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Test3664Item"
		(
			"Id"     Int NOT NULL,
			"TestId" Int NOT NULL,

			CONSTRAINT "PK_Test3664Item" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 11
DECLARE @TestId Int32
SET     @TestId = 1

INSERT INTO "Test3664Item"
(
	"Id",
	"TestId"
)
VALUES
(
	:Id,
	:TestId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 12
DECLARE @TestId Int32
SET     @TestId = 1

INSERT INTO "Test3664Item"
(
	"Id",
	"TestId"
)
VALUES
(
	:Id,
	:TestId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 11

SELECT
	m_1."Id",
	d."Id",
	d."TestId"
FROM
	"Test3664" m_1
		INNER JOIN "Test3664Item" d ON m_1."Id" = d."TestId"
WHERE
	d."Id" = :id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id"
FROM
	"Test3664" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 12

SELECT
	m_1."Id",
	d."Id",
	d."TestId"
FROM
	"Test3664" m_1
		INNER JOIN "Test3664Item" d ON m_1."Id" = d."TestId"
WHERE
	d."Id" = :id

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id"
FROM
	"Test3664" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3664Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3664"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

