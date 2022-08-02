﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserIssue3128"';
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
		CREATE TABLE "UserIssue3128"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_UserIssue3128" PRIMARY KEY ("Id")
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
	EXECUTE IMMEDIATE 'DROP TABLE "UserDetailsIssue3128"';
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
		CREATE TABLE "UserDetailsIssue3128"
		(
			"UserId" Int NOT NULL,
			"Age"    Int NOT NULL,

			CONSTRAINT "PK_UserDetailsIssue3128" PRIMARY KEY ("UserId")
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
SET     @Id = 10

INSERT INTO "UserIssue3128"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @UserId Int32
SET     @UserId = 10
DECLARE @Age Int32
SET     @Age = 18

INSERT INTO "UserDetailsIssue3128"
(
	"UserId",
	"Age"
)
VALUES
(
	:UserId,
	:Age
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p_1."FirstName",
	p_1."PersonID",
	p_1."LastName",
	p_1."MiddleName",
	p_1."Gender"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"UserIssue3128" t1
			) as "ex",
			p."FirstName",
			p."PersonID",
			p."LastName",
			p."MiddleName",
			p."Gender"
		FROM
			"Person" p
	) p_1
WHERE
	p_1."ex" > 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserDetailsIssue3128"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserIssue3128"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

