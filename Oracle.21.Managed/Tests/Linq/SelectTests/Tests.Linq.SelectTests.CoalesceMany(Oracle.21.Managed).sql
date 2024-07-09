BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CoalesceNullableFields"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "CoalesceNullableFields" ("Id", "Nullable1", "Nullable2", "Nullable3") VALUES (1,10,NULL,NULL)
	INTO "CoalesceNullableFields" ("Id", "Nullable1", "Nullable2", "Nullable3") VALUES (2,NULL,20,NULL)
	INTO "CoalesceNullableFields" ("Id", "Nullable1", "Nullable2", "Nullable3") VALUES (3,NULL,NULL,30)
	INTO "CoalesceNullableFields" ("Id", "Nullable1", "Nullable2", "Nullable3") VALUES (4,NULL,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Nullable1",
	t1."Nullable2",
	t1."Nullable3"
FROM
	"CoalesceNullableFields" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CoalesceNullableFields"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

