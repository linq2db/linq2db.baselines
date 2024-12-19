BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Books"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Books"
		(
			"Id"       Int          NOT NULL,
			"Title"    VarChar(255) NOT NULL,
			"AuthorId" Int          NOT NULL,

			CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Title Varchar2(9) -- String
SET     @Title = 'Something'
DECLARE @AuthorId Int32
SET     @AuthorId = 1

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
VALUES
(
	:Id,
	:Title,
	:AuthorId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Title Varchar2(4) -- String
SET     @Title = 'Book'
DECLARE @AuthorId Int32
SET     @AuthorId = 2

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
VALUES
(
	:Id,
	:Title,
	:AuthorId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Title Varchar2(6) -- String
SET     @Title = 'Boring'
DECLARE @AuthorId Int32
SET     @AuthorId = 3

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
VALUES
(
	:Id,
	:Title,
	:AuthorId
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Authors"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Authors"
		(
			"Id"   Int          NOT NULL,
			"Name" VarChar(255) NOT NULL,

			CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'John'

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'Steven'

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Smith'

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

WITH "BooksCte" ("Book_Id", "Book_Title", "Author_Name")
AS
(
	SELECT
		b."Id",
		b."Title",
		a_Author."Name"
	FROM
		"Books" b
			INNER JOIN "Authors" a_Author ON b."AuthorId" = a_Author."Id"
)
SELECT
	b_1."Id"
FROM
	(
		SELECT
			NULL as "Name",
			r."Book_Title" as "Title",
			r."Book_Id" as "Id"
		FROM
			"BooksCte" r
		UNION ALL
		SELECT
			t1."Author_Name" as "Name",
			NULL as "Title",
			NULL as "Id"
		FROM
			"BooksCte" t1
	) b_1
WHERE
	b_1."Name" = 'Steven' OR b_1."Title" = 'Something'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Authors"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Books"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

