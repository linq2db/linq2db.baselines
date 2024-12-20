BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Books"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Books" ("Id", "Title", "AuthorId") VALUES (1,'Something',1)
	INTO "Books" ("Id", "Title", "AuthorId") VALUES (2,'Book',2)
	INTO "Books" ("Id", "Title", "AuthorId") VALUES (3,'Boring',3)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Authors"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Authors" ("Id", "Name") VALUES (1,'John')
	INTO "Authors" ("Id", "Name") VALUES (2,'Steven')
	INTO "Authors" ("Id", "Name") VALUES (3,'Smith')
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Authors"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Books"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

