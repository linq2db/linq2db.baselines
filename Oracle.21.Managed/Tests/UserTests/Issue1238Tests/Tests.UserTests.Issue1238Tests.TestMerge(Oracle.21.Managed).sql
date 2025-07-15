BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

DELETE FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

MERGE INTO "InheritanceParent" Target
USING (
	SELECT 143 AS "Key1", NULL AS "Key2", 1 AS "Data_1" FROM sys.dual) "Source"
ON (Target."InheritanceParentId" = "Source"."Key1" AND
(Target."Name" = "Source"."Key2" OR Target."Name" IS NULL AND "Source"."Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"TypeDiscriminator" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	"Source"."Key1",
	"Source"."Key2",
	"Source"."Data_1"
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

MERGE INTO "InheritanceParent" Target
USING (
	SELECT 143 AS "Key1", NULL AS "Key2", 1 AS "Data_1" FROM sys.dual) "Source"
ON (Target."InheritanceParentId" = "Source"."Key1" AND
(Target."Name" = "Source"."Key2" OR Target."Name" IS NULL AND "Source"."Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"TypeDiscriminator" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	"Source"."Key1",
	"Source"."Key2",
	"Source"."Data_1"
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
DisposeTransaction
