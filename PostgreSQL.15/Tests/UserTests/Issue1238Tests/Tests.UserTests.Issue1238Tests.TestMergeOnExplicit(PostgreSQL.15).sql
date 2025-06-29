BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"InheritanceParent" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "InheritanceParent" "Target"
USING (VALUES
	(143,NULL::text,1)
) "Source"
(
	"Key1",
	"Key2",
	"Data_1"
)
ON ("Target"."InheritanceParentId" = "Source"."Key1" AND
("Target"."Name" = "Source"."Key2" OR "Target"."Name" IS NULL AND "Source"."Key2" IS NULL))

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
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "InheritanceParent" "Target"
USING (VALUES
	(143,NULL::text,1)
) "Source"
(
	"Key1",
	"Key2",
	"Data_1"
)
ON ("Target"."InheritanceParentId" = "Source"."Key1" AND
("Target"."Name" = "Source"."Key2" OR "Target"."Name" IS NULL AND "Source"."Key2" IS NULL))

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
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
DisposeTransaction
