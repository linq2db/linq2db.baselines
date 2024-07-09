BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CoalesceNullableFields"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "CoalesceNullableFields"
		(
			"Id"        Int NOT NULL,
			"Nullable1" Int     NULL,
			"Nullable2" Int     NULL,
			"Nullable3" Int     NULL,

			CONSTRAINT "PK_CoalesceNullableFields" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Nullable1 Int32
SET     @Nullable1 = 10
DECLARE @Nullable2 Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	:Id,
	:Nullable1,
	:Nullable2,
	:Nullable3
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Nullable1 Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int32
SET     @Nullable2 = 20
DECLARE @Nullable3 Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	:Id,
	:Nullable1,
	:Nullable2,
	:Nullable3
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Nullable1 Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int32
SET     @Nullable3 = 30

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	:Id,
	:Nullable1,
	:Nullable2,
	:Nullable3
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Nullable1 Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int32
SET     @Nullable3 = NULL

INSERT INTO "CoalesceNullableFields"
(
	"Id",
	"Nullable1",
	"Nullable2",
	"Nullable3"
)
VALUES
(
	:Id,
	:Nullable1,
	:Nullable2,
	:Nullable3
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Coalesce(t."Nullable1", t."Nullable2", t."Nullable3", t."Id"),
	Coalesce(t."Nullable2", t."Nullable1", t."Nullable3", t."Id"),
	Coalesce(t."Nullable2", t."Nullable3", t."Nullable1", t."Id"),
	Coalesce(t."Nullable3", t."Nullable1", t."Nullable2", t."Id"),
	Coalesce(t."Nullable3", t."Nullable2", t."Nullable1", t."Id"),
	t."Id",
	Coalesce(t."Nullable1", t."Id"),
	Coalesce(t."Nullable1", t."Nullable2", t."Id")
FROM
	"CoalesceNullableFields" t

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Nullable1",
	t1."Nullable2",
	t1."Nullable3"
FROM
	"CoalesceNullableFields" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CoalesceNullableFields"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

