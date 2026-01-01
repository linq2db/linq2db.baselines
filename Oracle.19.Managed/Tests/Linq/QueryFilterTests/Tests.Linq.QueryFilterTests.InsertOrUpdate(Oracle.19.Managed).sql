-- Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "Issue5289Table" t1
USING (SELECT 1 AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId",
		"Deleted"
	)
	VALUES
	(
		1,
		2,
		0
	)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"Issue5289Table" r
WHERE
	r."Deleted" = 0 AND r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "Issue5289Table" t1
USING (SELECT 1 AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId",
		"Deleted"
	)
	VALUES
	(
		1,
		2,
		0
	)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."PictureId",
	r."Deleted"
FROM
	"Issue5289Table" r
WHERE
	r."Deleted" = 0 AND r."Id" = 1
FETCH NEXT 2 ROWS ONLY

