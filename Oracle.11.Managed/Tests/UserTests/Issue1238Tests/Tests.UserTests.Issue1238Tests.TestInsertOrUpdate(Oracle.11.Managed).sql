﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

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

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

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

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
DisposeTransaction
