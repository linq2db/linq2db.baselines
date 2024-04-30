﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestFolder"';
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
		CREATE TABLE "TestFolder"
		(
			"Id"       Raw(16)      NOT NULL,
			"Label"    VarChar(255)     NULL,
			"ParentId" Raw(16)          NULL
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

WITH CTE
(
	"Level_1",
	"Id",
	"ParentId",
	"Label",
	"Entity_Id",
	"Entity_Label",
	"Entity_ParentId"
)
AS
(
	SELECT
		0,
		c_1."Id",
		c_1."ParentId",
		c_1."Label",
		c_1."Id",
		c_1."Label",
		c_1."ParentId"
	FROM
		"TestFolder" c_1
	WHERE
		c_1."ParentId" IS NULL
	UNION ALL
	SELECT
		r."Level_1" + 1,
		t1."Id",
		t1."ParentId",
		r."Label" || '/' || t1."Label",
		t1."Id",
		t1."Label",
		t1."ParentId"
	FROM
		"TestFolder" t1
			INNER JOIN CTE r ON (t1."ParentId" = r."Id" OR t1."ParentId" IS NULL AND r."Id" IS NULL)
)
SELECT
	t2."Level_1",
	t2."Id",
	t2."ParentId",
	t2."Label",
	t2."Entity_Id",
	t2."Entity_Label",
	t2."Entity_ParentId"
FROM
	CTE t2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestFolder"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

