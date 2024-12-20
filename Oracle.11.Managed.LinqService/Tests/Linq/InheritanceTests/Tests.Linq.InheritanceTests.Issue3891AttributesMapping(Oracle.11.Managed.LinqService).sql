BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Base"';
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
		CREATE TABLE "Base"
		(
			"Id"           Int          NOT NULL,
			"Type"         Int          NOT NULL,
			"Name_First"   VarChar(255)     NULL,
			"Name_Second"  VarChar(255)     NULL,
			"Test_ChildId" Int          NOT NULL,

			CONSTRAINT "PK_Base" PRIMARY KEY ("Id")
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
DECLARE @Type Int32
SET     @Type = 1
DECLARE @ChildId Int32
SET     @ChildId = 2
DECLARE @Name_First Varchar2(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second Varchar2(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO "Base"
(
	"Id",
	"Type",
	"Test_ChildId",
	"Name_First",
	"Name_Second"
)
VALUES
(
	:Id,
	:Type,
	:ChildId,
	:Name_First,
	:Name_Second
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Type",
	t1."Id",
	t1."Test_ChildId",
	t1."Name_First",
	t1."Name_Second"
FROM
	"Base" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Type Int32
SET     @Type = 1
DECLARE @ChildId Int32
SET     @ChildId = 2
DECLARE @Name_First Varchar2(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second Varchar2(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"Base" t1
SET
	"Type" = :Type,
	"Test_ChildId" = :ChildId,
	"Name_First" = :Name_First,
	"Name_Second" = :Name_Second
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Type",
	t1."Id",
	t1."Test_ChildId",
	t1."Name_First",
	t1."Name_Second"
FROM
	"Base" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Base"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

