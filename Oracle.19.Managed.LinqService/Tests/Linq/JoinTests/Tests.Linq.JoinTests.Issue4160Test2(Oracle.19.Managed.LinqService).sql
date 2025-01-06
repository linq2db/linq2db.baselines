BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160Person"';
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
		CREATE TABLE "Issue4160Person"
		(
			"Code" VarChar(255)     NULL
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
DECLARE @Code Varchar2(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	:Code
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(2) -- String
SET     @Code = 'SD'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	:Code
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(2) -- String
SET     @Code = 'SH'

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
(
	:Code
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160City"';
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
		CREATE TABLE "Issue4160City"
		(
			"Code" VarChar(255)     NULL,
			"Name" VarChar(255)     NULL
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
DECLARE @Code Varchar2(2) -- String
SET     @Code = 'SD'
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	:Code,
	:Name
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(2) -- String
SET     @Code = 'SD'
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	:Code,
	:Name
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(2) -- String
SET     @Code = 'SH'
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
(
	:Code,
	:Name
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	cc_1."Name"
FROM
	"Issue4160Person" t1
		OUTER APPLY (
			SELECT
				cc."Name"
			FROM
				"Issue4160City" cc
			WHERE
				cc."Code" = t1."Code" OR cc."Code" IS NULL AND t1."Code" IS NULL
			FETCH NEXT 1 ROWS ONLY
		) cc_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160City"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4160Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

