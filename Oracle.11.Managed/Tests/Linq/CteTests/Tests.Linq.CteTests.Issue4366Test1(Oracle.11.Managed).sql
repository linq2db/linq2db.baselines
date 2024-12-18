BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dto"';
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
		CREATE TABLE "Dto"
		(
			"id"        Int          NOT NULL,
			"name"      VarChar(255)     NULL,
			"parent_id" Int              NULL,
			"FullName"  VarChar(255)     NULL
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

WITH "d"
(
	"FullName",
	"id",
	"parent_id",
	"name"
)
AS
(
	SELECT
		a."name",
		a."id",
		a."parent_id",
		a."name"
	FROM
		"Dto" a
	WHERE
		a."parent_id" IS NULL
	UNION ALL
	SELECT
		recur."FullName" || ' > ' || t1."name",
		t1."id",
		t1."parent_id",
		t1."name"
	FROM
		"Dto" t1
			INNER JOIN "d" recur ON recur."id" = t1."parent_id" AND t1."parent_id" IS NOT NULL
)
SELECT
	t2."id",
	t2."parent_id",
	t2."name",
	t2."FullName"
FROM
	"d" t2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dto"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

