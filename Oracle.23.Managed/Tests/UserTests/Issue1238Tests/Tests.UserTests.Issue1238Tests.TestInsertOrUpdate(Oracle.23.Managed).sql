-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"InheritanceParent" t1

-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "InheritanceParent" t1
USING (SELECT 143 AS "InheritanceParentId", NULL AS "Name" FROM SYS.DUAL) s ON
(
	t1."InheritanceParentId" = s."InheritanceParentId" AND
	(t1."Name" IS NULL AND s."Name" IS NULL OR t1."Name" = s."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"TypeDiscriminator" = 1
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		143,
		NULL,
		1
	)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "InheritanceParent" t1
USING (SELECT 143 AS "InheritanceParentId", NULL AS "Name" FROM SYS.DUAL) s ON
(
	t1."InheritanceParentId" = s."InheritanceParentId" AND
	(t1."Name" IS NULL AND s."Name" IS NULL OR t1."Name" = s."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"TypeDiscriminator" = 1
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		143,
		NULL,
		1
	)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

