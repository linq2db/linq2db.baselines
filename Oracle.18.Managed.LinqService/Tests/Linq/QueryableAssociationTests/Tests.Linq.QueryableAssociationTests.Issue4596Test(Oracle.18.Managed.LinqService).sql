BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4596Form"';
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
		CREATE TABLE "Issue4596Form"
		(
			"Id" Int      NOT NULL,
			C1   NChar(1) NOT NULL
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
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4596Item"';
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
		CREATE TABLE "Issue4596Item"
		(
			"Id"         Int          NOT NULL,
			"FormId"     Int          NOT NULL,
			"OrderIndex" Int          NOT NULL,
			"Name1"      VarChar(255)     NULL,
			"Name2"      VarChar(255)     NULL,
			"Name3"      VarChar(255)     NULL
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

SELECT
	m_1."Id",
	m_1."c1",
	m_1."c2",
	d."Id",
	d."FormId",
	d."OrderIndex",
	d."Name1",
	d."Name2",
	d."Name3"
FROM
	(
		SELECT
			t1."Id",
			CASE
				WHEN t1.C1 = 'T' THEN 1
				ELSE 0
			END as "c1",
			CASE
				WHEN t1.C1 <> 'T' THEN 1
				ELSE 0
			END as "c2"
		FROM
			"Issue4596Form" t1
		FETCH NEXT 1 ROWS ONLY
	) m_1,
	"Issue4596Item" d
WHERE
	d."FormId" = m_1."Id"
ORDER BY
	CASE
		WHEN m_1."c1" = 1 THEN d."OrderIndex"
		ELSE 0
	END,
	CASE
		WHEN m_1."c2" = 1 THEN d."Name1"
		ELSE ''
	END,
	CASE
		WHEN m_1."c2" = 1 THEN d."Name2"
		ELSE ''
	END,
	CASE
		WHEN m_1."c2" = 1 THEN d."Name3"
		ELSE ''
	END

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1.C1,
	CASE
		WHEN t1.C1 = 'T' THEN 1
		ELSE 0
	END as "Item2",
	CASE
		WHEN t1.C1 <> 'T' THEN 1
		ELSE 0
	END as "Item3"
FROM
	"Issue4596Form" t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4596Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4596Form"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

