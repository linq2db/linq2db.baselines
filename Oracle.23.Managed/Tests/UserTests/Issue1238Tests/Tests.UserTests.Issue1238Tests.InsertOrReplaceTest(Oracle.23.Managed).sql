BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DELETE FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Key1 Int32
SET     @Key1 = 143
DECLARE @Key2 Varchar2 -- String
SET     @Key2 = NULL
DECLARE @Data Int32
SET     @Data = 1

MERGE INTO "InheritanceParent" t1
USING (SELECT :Key1 AS "InheritanceParentId", :Key2 AS "Name" FROM SYS.DUAL) s ON
(
	t1."InheritanceParentId" = s."InheritanceParentId" AND
	(t1."Name" IS NULL AND s."Name" IS NULL OR t1."Name" = s."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"TypeDiscriminator" = :Data
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		:Key1,
		:Key2,
		:Data
	)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Key1 Int32
SET     @Key1 = 143
DECLARE @Key2 Varchar2 -- String
SET     @Key2 = NULL
DECLARE @Data Int32
SET     @Data = 1

MERGE INTO "InheritanceParent" t1
USING (SELECT :Key1 AS "InheritanceParentId", :Key2 AS "Name" FROM SYS.DUAL) s ON
(
	t1."InheritanceParentId" = s."InheritanceParentId" AND
	(t1."Name" IS NULL AND s."Name" IS NULL OR t1."Name" = s."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"TypeDiscriminator" = :Data
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		:Key1,
		:Key2,
		:Data
	)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"InheritanceParent" t1

BeforeExecute
DisposeTransaction
