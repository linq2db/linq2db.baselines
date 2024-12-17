BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4163Table"';
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
		CREATE TABLE "Issue4163Table"
		(
			"Id"     Int        NOT NULL,
			"Method" VarChar(1)     NULL
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
DECLARE @Method Varchar2 -- String
SET     @Method = ''

INSERT INTO "Issue4163Table"
(
	"Id",
	"Method"
)
VALUES
(
	:Id,
	:Method
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Method Varchar2(1) -- String
SET     @Method = 'C'

INSERT INTO "Issue4163Table"
(
	"Id",
	"Method"
)
VALUES
(
	:Id,
	:Method
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Method Varchar2(1) -- String
SET     @Method = 'E'

INSERT INTO "Issue4163Table"
(
	"Id",
	"Method"
)
VALUES
(
	:Id,
	:Method
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Issue4163Table" r
WHERE
	r."Method" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4163Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

