BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Fact"';
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
		CREATE TABLE "Fact"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
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
SET     @Id = 3

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Tag"';
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
		CREATE TABLE "Tag"
		(
			"Id"     Int          NOT NULL,
			"FactId" Int          NOT NULL,
			"Name"   VarChar(255) NOT NULL,

			CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
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
DECLARE @FactId Int32
SET     @FactId = 3
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	:Id,
	:FactId,
	:Name
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @FactId Int32
SET     @FactId = 3
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Tag3'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	:Id,
	:FactId,
	:Name
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @FactId Int32
SET     @FactId = 4
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Tag4'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	:Id,
	:FactId,
	:Name
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @FactId Int32
SET     @FactId = 6
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Tag6'

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(
	:Id,
	:FactId,
	:Name
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	f."Id",
	ft."Id",
	ft."FactId",
	ft."Name"
FROM
	"Tag" ft
		FULL JOIN "Fact" f ON ft."FactId" = f."Id"
WHERE
	f."Id" > 3 AND f."Id" IS NOT NULL OR ft."FactId" > 3 AND ft."FactId" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Tag"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Fact"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

