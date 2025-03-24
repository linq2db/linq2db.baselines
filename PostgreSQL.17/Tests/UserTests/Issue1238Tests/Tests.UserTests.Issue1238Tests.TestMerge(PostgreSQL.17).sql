BeforeExecute
BeginTransaction
BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

DELETE FROM
	"InheritanceParent" t1

BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "InheritanceParent" "Target"
USING (VALUES
	(143,NULL::text,1)
) "Source"
(
	"source_Key1",
	"source_Key2",
	"source_Data"
)
ON ("Target"."InheritanceParentId" = "Source"."source_Key1" AND
("Target"."Name" = "Source"."source_Key2" OR "Target"."Name" IS NULL AND "Source"."source_Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"TypeDiscriminator" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	"Source"."source_Key1",
	"Source"."source_Key2",
	"Source"."source_Data"
)

BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "InheritanceParent" "Target"
USING (VALUES
	(143,NULL::text,1)
) "Source"
(
	"source_Key1",
	"source_Key2",
	"source_Data"
)
ON ("Target"."InheritanceParentId" = "Source"."source_Key1" AND
("Target"."Name" = "Source"."source_Key2" OR "Target"."Name" IS NULL AND "Source"."source_Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"TypeDiscriminator" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	"Source"."source_Key1",
	"Source"."source_Key2",
	"Source"."source_Data"
)

BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
DisposeTransaction
