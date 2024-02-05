BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_person"';
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
		CREATE TABLE "i1084_person"
		(
			"Id"            Int NOT NULL,
			"Number"        Int NOT NULL,
			"StatusBitmask" Int NOT NULL
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
DECLARE @Number_1 Int32
SET     @Number_1 = 1
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO "i1084_person"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(
	:Id,
	:Number_1,
	:StatusBitmask
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Number_1 Int32
SET     @Number_1 = 2
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO "i1084_person"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(
	:Id,
	:Number_1,
	:StatusBitmask
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_student"';
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
		CREATE TABLE "i1084_student"
		(
			"Id"            Int          NOT NULL,
			"Number"        VarChar(255)     NULL,
			"StatusBitmask" Int          NOT NULL
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
DECLARE @Number_1 Varchar2(1) -- String
SET     @Number_1 = '1'
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO "i1084_student"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(
	:Id,
	:Number_1,
	:StatusBitmask
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Number_1 Varchar2(1) -- String
SET     @Number_1 = '2'
DECLARE @StatusBitmask Int32
SET     @StatusBitmask = 0

INSERT INTO "i1084_student"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(
	:Id,
	:Number_1,
	:StatusBitmask
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	k_1."Id",
	k_1."Number",
	k_1."StatusBitmask",
	joinedTable."StatusBitmask"
FROM
	"i1084_person" k_1
		LEFT JOIN "i1084_student" joinedTable ON k_1."Id" = joinedTable."Id" AND Cast(k_1."Number" as VarChar(11)) = joinedTable."Number"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_student"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

