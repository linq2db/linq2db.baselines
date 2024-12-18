BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "table1"';
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
		CREATE TABLE "table1"
		(
			"Id"     Int          NOT NULL,
			"Field1" VarChar(255)     NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "table2"';
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
		CREATE TABLE "table2"
		(
			"Table1Id" Int          NOT NULL,
			"Field2"   VarChar(255)     NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "table3"';
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
		CREATE TABLE "table3"
		(
			"Table1Id" Int          NOT NULL,
			"Field3"   VarChar(255)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @search Varchar2(5) -- String
SET     @search = 'test%'
DECLARE @search_1 Varchar2(4) -- String
SET     @search_1 = 'test'
DECLARE @search_2 Varchar2(5) -- String
SET     @search_2 = 'test%'

SELECT
	row1."Id"
FROM
	"table1" row1
		INNER JOIN "table2" row2 ON row1."Id" = row2."Table1Id"
WHERE
	row2."Field2" LIKE :search ESCAPE '~'
UNION
SELECT
	row1_1."Id"
FROM
	"table1" row1_1
		INNER JOIN "table3" row3 ON row1_1."Id" = row3."Table1Id"
WHERE
	row3."Field3" = :search_1 AND row3."Field3" IS NOT NULL
UNION
SELECT
	row1_2."Id"
FROM
	"table1" row1_2
WHERE
	row1_2."Field1" LIKE :search_2 ESCAPE '~'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @search Varchar2(5) -- String
SET     @search = 'test%'
DECLARE @search_1 Varchar2(4) -- String
SET     @search_1 = 'test'
DECLARE @search_2 Varchar2(5) -- String
SET     @search_2 = 'test%'

SELECT
	row1."Id"
FROM
	"table1" row1
		INNER JOIN "table2" row2 ON row1."Id" = row2."Table1Id"
WHERE
	row2."Field2" LIKE :search ESCAPE '~'
UNION
SELECT
	row1_1."Id"
FROM
	"table1" row1_1
		INNER JOIN "table3" row3 ON row1_1."Id" = row3."Table1Id"
WHERE
	row3."Field3" = :search_1 AND row3."Field3" IS NOT NULL
UNION
SELECT
	row1_2."Id"
FROM
	"table1" row1_2
WHERE
	row1_2."Field1" LIKE :search_2 ESCAPE '~'

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "table3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

