BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Books"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Books"
		(
			"Id"       Int           NOT NULL,
			"Title"    NVarChar(255) NOT NULL,
			"AuthorId" Int           NOT NULL,

			CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
VALUES
(1,'Something',1),
(2,'Book',2),
(3,'Boring',3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Authors"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Authors"
		(
			"Id"   Int           NOT NULL,
			"Name" NVarChar(255) NOT NULL,

			CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
VALUES
(1,'John'),
(2,'Steven'),
(3,'Smith')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH "BooksCte" ("Book_Id", "Book_Title", "Author_Name")
AS
(
	SELECT
		"b"."Id",
		"b"."Title",
		"a_Author"."Name"
	FROM
		"Books" "b"
			INNER JOIN "Authors" "a_Author" ON "b"."AuthorId" = "a_Author"."Id"
)
SELECT
	"b_1"."Id"
FROM
	(
		SELECT
			CAST(NULL AS NVarChar(255)) as "Name",
			"r"."Book_Title" as "Title",
			"r"."Book_Id" as "Id"
		FROM
			"BooksCte" "r"
		UNION ALL
		SELECT
			"t1"."Author_Name" as "Name",
			CAST(NULL AS NVarChar(255)) as "Title",
			CAST(NULL AS Int) as "Id"
		FROM
			"BooksCte" "t1"
	) "b_1"
WHERE
	"b_1"."Name" = 'Steven' OR "b_1"."Title" = 'Something'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Authors"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Books"';
END

