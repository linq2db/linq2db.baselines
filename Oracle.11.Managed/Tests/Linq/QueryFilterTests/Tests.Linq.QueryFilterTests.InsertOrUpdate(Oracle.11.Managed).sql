-- Oracle.11.Managed Oracle11

MERGE INTO "Issue5289Table" r
USING (SELECT 1 AS "Id" FROM SYS.DUAL) s ON
(
	r."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId"
	)
	VALUES
	(
		1,
		2
	)

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."PictureId"
FROM
	"Issue5289Table" r
WHERE
	(r."Deleted" = 0 OR r."Deleted" IS NULL) AND r."Id" = 1 AND
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11

MERGE INTO "Issue5289Table" r
USING (SELECT 1 AS "Id" FROM SYS.DUAL) s ON
(
	r."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId"
	)
	VALUES
	(
		1,
		2
	)

-- Oracle.11.Managed Oracle11

SELECT
	r."Id",
	r."PictureId"
FROM
	"Issue5289Table" r
WHERE
	(r."Deleted" = 0 OR r."Deleted" IS NULL) AND r."Id" = 1 AND
	ROWNUM <= 2

